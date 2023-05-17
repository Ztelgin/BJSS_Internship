import { v4 as uuidv4 } from 'uuid';

const Messages = (props) => {
  //console.log(props.messages);
  const labels = props.messages.flatMap((outerArray) => {

    const typeElement = outerArray.find((element) => element.type !== undefined);
    const type = typeElement ? typeElement.type : '';
    //console.log(type);

    return outerArray
      .filter((element) => element.text !== undefined && element.text !== '' && !element.text.includes('['))
      .map((element, index) => (
        <label className={type} key={uuidv4()}>
          {element.text}
        </label>
      ));
  });

  return <div  className='messages'>{labels}</div>;
};

export default Messages;