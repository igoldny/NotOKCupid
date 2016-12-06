import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import InitialRegistrationContainer from './signup/initial_reg_container';
import Index from './index';


const App = ({children}) => (
  <div className="logo-and-form">
    <Index />
    {children}
    <GreetingContainer />
  </div>
);

export default App;
