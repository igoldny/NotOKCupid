import React from 'react';

const PhaseOne = (props) => (
  <form onSubmit={props.submit} className="form-one">
    <span className="prefix">
      I am a
    </span>
    <select
      onChange={props.update("sexuality")}
      value={props.sexuality}
      className="phase-one-button-container">
      <option value="straight">Straight</option>
      <option value="gay">Gay</option>
      <option value="bisexual">Bisexual</option>
    </select>

    <select
      onChange={props.update("gender")}
      value={props.gender}
      className="phase-one-button-container">
      <option value="woman">Woman</option>
      <option value="man">Man</option>
    </select>

    <input type="submit" value="Continue" className="continue-button" />
  </form>
);

export default PhaseOne;
