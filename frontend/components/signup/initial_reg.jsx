import React from 'react';
import { Link, withRouter } from 'react-router';


class InitialRegistration extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      regStage: 0,
      username: "",
      password: "",
      email: "",
      gender: "male",
      sexuality: "",
      age: null,
      location: ""
    };

    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleFirstStage = this.handleFirstStage.bind(this);
    this.handleSecondStage = this.handleSecondStage.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    //
    // const user = this.state;
    // this.props.processForm(user)
    //   .then(() => {
    //     this.setState({ username: "", password: "" });
    //     this.props.router.push("/");
    //   });
  }

  update(field) {
    return (e) => this.setState({ [field]: e.currentTarget.value });
  }

  handleFirstStage() {
    e.preventDefault();
  }

  handleSecondStage() {
    e.preventDefault();
  }

  // errorList(property) {
  //   if (this.props.errors[property] === undefined) return [];
  //   return this.props.errors[property].map((err, idx) => {
  //     return <li key={idx}>{err}</li>;
  //   });
  // }

  render() {

    // const other_name = this.props.formType === 'Log In' ? 'Sign Up' : 'Log In';
    // const other_url = this.props.formType === 'Log In' ? 'signup' : 'login';

    let currentForm;

    if (this.state.regStage === 0) {
      currentForm = (
        <form onSubmit={this.handleFirstStage}>
          I am a
          <select
            onChange={this.update("sexuality")}
            value={this.state.sexuality}
            className="sexuality-dropdown">
            <option value="straight">Straight</option>
            <option value="gay">Gay</option>
            <option value="bisexual">Bisexual</option>
          </select>

          <select
            onChange={this.update("gender")}
            value={this.state.gender}
            className="gender-dropdown">
            <option value="woman">Woman</option>
            <option value="man">Man</option>
          </select>

          <input type="submit" value="Continue" className="continue-button" />
        </form>
      );
    } else if (this.state.regStage === 1) {
      currentForm = (
        <form onSubmit={this.handleSecondStage}>
          <input type="text"
          value={this.state.email}
          onChange={this.update("email")}
          placeholder="Email"/>

          <input type="text"
          value={this.state.age}
          onChange={this.update("age")}
          placeholder="Age"/>

          <input type="text"
          value={this.state.location}
          onChange={this.update("location")}
          placeholder="Zip Code"/>

          <input type="submit" value="Next" className="next-button" />
        </form>
      );
    }

    return (
      <div>
        <ul>
        </ul>
        {currentForm}
      </div>
    );
  }
}
// {this.errorList("errors")}

export default withRouter(InitialRegistration);
