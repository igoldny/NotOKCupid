import React from 'react';
import Matches from './matches';
import { withRouter } from 'react-router';

class Browse extends React.Component {
  constructor(props) {
    super(props);

  }


  render() {
    return (
      <div>
        <Matches />
      </div>
    );
  }
}

export default withRouter(Browse);
