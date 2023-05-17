import './App.css';
import React, { useEffect, useState } from 'react';

const useAudio = url => {
  const [audio] = useState(new Audio(url));
  const [playing, setPlaying] = useState(false);

  const toggle = () => setPlaying(!playing);

  useEffect(() => {
      playing ? audio.play() : audio.pause();
    },
    [audio, playing]
  );

  useEffect(() => {
    audio.addEventListener('ended', () => setPlaying(false));
    return () => {
      audio.removeEventListener('ended', () => setPlaying(false));
    };
  }, [audio]);

  return [playing, toggle];
};

function App() {
  const [data, setData] = useState(null);
  
  return (
    <div className="App">
        <div>
          <SearchButton 
            label='Top Albums'
            onClick={() => GetData(setData, 'topalbums')} 
          />
          <SearchButton 
            label='Top Songs'
            onClick={() => GetData(setData, 'topsongs')} 
          />
          <CardHolder data={data}/>
        </div>
    </div>
  );
}

function SearchButton(props){
  return (
    <button className='Top-Btn' onClick={props.onClick}>{props.label}</button>
  );
}

function CardHolder(props){
  if (props.data){
    return (
      <div className='Card-Holder'>
        {props.data.map((entry) => (
          <Card
            key={entry.id.attributes["im:id"]}
            title={entry["im:name"].label}
            img={entry["im:image"][2].label}
            sound={entry.link[1].attributes.href}
          />
        ))}
      </div>
    );
  }
}

function Card(props) {
  const [playing, toggle] = useAudio(props.sound)

  return (
    <div className='Card'>
      <label className='Card-Label'>{props.title}</label>
      <img className='Card-Img' src={props.img} alt="Cover"/>
      <button className='Card-Btn' onClick={toggle}>
        {playing ? 'Pause' : 'Play'}
      </button>
    </div>
  )
}

async function GetData(setData, type){
  fetch(`https://itunes.apple.com/us/rss/${type}/limit=100/json`)
  .then((response) => response.json())
  .then((json) => {
    console.log(json.feed.entry)
    setData(json.feed.entry);
});
}

export default App;
