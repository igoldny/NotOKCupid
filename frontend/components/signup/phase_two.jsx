import React from 'react';

const PhaseTwo = (props) => (
  <form onSubmit={props.submit}>

    <div style={{display: 'none'}}>
      <label className="phase-two-label">Email</label>
      <input type="text"
        value={props.email}
        onChange={props.update("email")}
        placeholder="Email"
        className="phase-two-box"/>
    </div>


    <label className="phase-two-label">Age</label>
    <input type="text"
      value={props.age}
      onChange={props.update("age")}
      placeholder="Age"
      className="phase-two-box"/>
    <p className="reg-errors">{props.age_errors}</p>

    <div>
      <label className="phase-two-label">Camp</label>
      <input type="text"
        value={props.location}
        onChange={props.update("location")}
        placeholder="Camp"
        className="phase-two-box"/>
      <p className="reg-errors">{props.zip_errors}</p><br></br>
    </div>

    <input type="submit" value="Next" className="next-button" />
  </form>
);

export default PhaseTwo;
