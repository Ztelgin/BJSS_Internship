import { useEffect, useRef } from 'react';
import Messages from './Messages';
import Quickreplies from './Quickreplies';

const Chatwindow = (props) => {
  const messagesEndRef = useRef(null);

  useEffect(() => {
    scrollToBottom();
  }, [props.messages]);

  function scrollToBottom() {
    messagesEndRef.current.scrollIntoView({ behavior: 'smooth', block: 'end' });
  }

  return (
    <div className='chatWindow'>
      <Messages messages={props.messages} />
      <Quickreplies response={props.response} reply={props.reply} />
      <div ref={messagesEndRef}></div>
    </div>
  );
};

export default Chatwindow;
