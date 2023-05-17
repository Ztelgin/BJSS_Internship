function Quickreplies (props) {
    const replies = props.response[props.response.length - 1].quickReplies
    if (replies){
        const quickReplies = Object.keys(replies).map((key) => (
          <button className="QuickReply" key={key} onClick={props.reply}>{replies[key]}</button>
        ));

        return <div className="quickReplies">{quickReplies}</div>
      }
}

export default Quickreplies;