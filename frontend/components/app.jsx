import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import InitialRegistrationContainer from './signup/initial_reg_container';


const App = ({children}) => (
  <div>
    <h1>NotOKCupid</h1>
    {children}
    <GreetingContainer />
    <InitialRegistrationContainer />
  </div>
);

export default App;
