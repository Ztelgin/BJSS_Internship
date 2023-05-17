import '../styles/Employee.css'

const Empdisplay = (props) => {
  console.log(props.results[0]);
  var labels = []
  if (props.results[0]) {
    labels = [...labels, props.results[0].map((element, index) => (
      <div className='emp'>
        <label className='name' key={index}>
          {element[0]}
        </label>
        <label className='role' key={index}>
            {element[1]}
        </label>
        <div className='roleStatus'>
          <label className='email' key={index}>
            {element[3]}
          </label>
          <label className='status' key={index}>
            {element[2]}
          </label>
        </div>
        <label className='about' key={index}>
          {element[4]}
        </label>
      </div>
    ))];
  }
  return (
    <div className="Employees">{labels}</div>
  );
};
  
  export default Empdisplay;