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
      email: `${Math.random()}@${Math.random()}.com`,
      gender: "woman",
      sexuality: "straight",
      age: "",
      location: "",
      errors: false,
      age_errors: "",
      zip_errors: "",
    };

    this.update = this.update.bind(this);
    this.handleFirstStage = this.handleFirstStage.bind(this);
    this.handleSecondStage = this.handleSecondStage.bind(this);
    this.checkForErrors = this.checkForErrors.bind(this);
    this.checkToMoveOn = this.checkToMoveOn.bind(this);
  }

  update(field) {
    return (e) => this.setState({ [field]: e.currentTarget.value });
  }

  handleFirstStage(e) {
    e.preventDefault();

    this.setState({
      sexuality: this.state.sexuality,
      gender: this.state.gender,
      regStage: 1
    });
  }

  checkForErrors(cb) {
    const currentErrors = {
      errors: false,
      age_errors: "",
      zip_errors: "",
    };

    this.setState(currentErrors, cb);
  }

  checkToMoveOn() {
    this.setState({
      email: this.state.email,
      age: this.state.age,
      location: this.state.location,
      age_errors: "",
      zip_errors: "",
      errors: false,
      regStage: 2,
    });
  }

  handleSecondStage(e) {
    e.preventDefault();

    this.checkForErrors(this.checkToMoveOn);
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
          location={ this.state.location }
          age_errors={ this.state.age_errors }
          zip_errors={ this.state.zip_errors }/>
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

export default withRouter(InitialRegistration);
