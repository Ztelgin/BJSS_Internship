import React, { useState, useEffect } from 'react';
import callAccelerator from './components/CallAccelerator';
import Chatwindow from './components/Chatwindow';
import Empdisplay from './components/Empdisplay';
import './styles/App.css'
import './styles/Chatwindow.css';

const App = () => {
  const [userId, setUserId] = useState(null);
  const [messages, setMessages] = useState([[{type: 'bot'}]]);
  const [response, setResponse] = useState([{text : ''}]);
  const [input, setInput] = useState('');
  const [results, setResults] = useState([]);

  useEffect(() => {
    const init = async () => {
      const userId = (await callAccelerator(null, null, true)).sessionId;
      setUserId(userId);
      const response = (await callAccelerator(userId, { action: 'reset' })).response;
      handleResponse(response);
    };

    init();

  }, []);

  const handleResponse = response => {

    setResponse(response);
    const newResponse = [...response, {type: 'bot'}]
    setMessages(prevMessages => [...prevMessages, newResponse]);
  };

  const handleInputChange = e => {
    setInput(e.target.value);
  };

  const handleInputSubmit = async e => {
    const userResponse = [{text: e.target.value}, {type: 'user'}];
    setMessages(prevMessages => [...prevMessages, userResponse]);

    e.target.value = ''

    const response = (await callAccelerator(userId, { text: input })).response;
    handleResponse(response);
    checkForResults(response);
    setInput('');
  };

  const handleQuickReply = async (e) => {
    const userResponse = [{text: e.target.textContent}, {type: 'user'}];
    setMessages(prevMessages => [...prevMessages, userResponse]);

    const response = (await callAccelerator(userId, { text: e.target.textContent })).response;

    handleResponse(response);
    checkForResults(response);
  }

  const checkForResults = response => {
    const newResults = response.filter(element => element.text.includes('['))
      .map(element => JSON.parse(element.text));
    if (newResults.length > 0){
      setResults(newResults);
    }
  };

  return (
    <div className="app">
      <main className='main'>
        <Chatwindow 
          messages={messages} 
          response={response} reply={(e) => handleQuickReply(e)}
        />
        <input 
          type="text" 
          className='input' 
          onChange={handleInputChange}
          placeholder="Enter response"
          onKeyUp={(event) => {
            if (event.key === "Enter") {
            handleInputSubmit(event);
            }
          }}
        />
      </main>
      <div className='Employees'>
          <Empdisplay results={results}></Empdisplay>
      </div>
    </div>
  );
}



export default App;
