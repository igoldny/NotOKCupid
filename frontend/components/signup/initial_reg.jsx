import React from 'react';
import { Link, withRouter } from 'react-router';
import PhaseOne from './phase_one';
import PhaseTwo from './phase_two';
import SignUpFormContainer from './sign_up_form_container';


class InitialRegistration extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      regStage: 0,
      email: "",
      gender: "straight",
      sexuality: "woman",
      age: "",
      location: ""
    };

    this.update = this.update.bind(this);
    this.handleFirstStage = this.handleFirstStage.bind(this);
    this.handleSecondStage = this.handleSecondStage.bind(this);
  }

  update(field) {
    if (field === "age") {
      return (e) => this.setState({ age: parseInt(e.currentTarget.value) });
    } else {
      return (e) => this.setState({ [field]: e.currentTarget.value });
    }
  }

  handleFirstStage(e) {
    e.preventDefault();

    this.setState({
      sexuality: this.state.sexuality,
      gender: this.state.gender,
      regStage: 1
    });
  }

  handleSecondStage(e) {
    e.preventDefault();

    this.setState({
      email: this.state.email,
      age: this.state.age,
      location: this.state.location,
      regStage: 2
    });
  }

  errorList(property) {
    if (this.props.errors[property] === undefined) return [];
    return this.props.errors[property].map((err, idx) => {
      return <li key={idx}>{err}</li>;
    });
  }

  render() {


    let currentForm;

    if (this.state.regStage === 0) {
      currentForm = (
        <PhaseOne
          submit={ this.handleFirstStage }
          update={ this.update }
          sexuality={ this.state.sexuality }
          gender={ this.state.gender } />
      );
    } else if (this.state.regStage === 1) {
      currentForm = (
        <PhaseTwo
          submit={ this.handleSecondStage }
          update={ this.update }
          email={ this.state.email }
          age={ this.state.age }
          location={ this.state.location } />
      );
    } else if (this.state.regStage === 2) {

      const regInfo = {
        sexuality: this.state.sexuality,
        gender: this.state.gender,
        email: this.state.email,
        age: this.state.age,
        location: this.state.location
      };

      currentForm = (
        <SignUpFormContainer regInfo={ regInfo } />
      );
    }

    return (
      <div className="form-container">
        {currentForm}
      </div>
    );
  }
}
// {this.errorList("errors")}

export default withRouter(InitialRegistration);
