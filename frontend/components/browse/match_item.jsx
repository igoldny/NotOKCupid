import React from 'react';

class MatchItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <p>{this.props.user.username}</p>
        <p>{this.props.matchPercentage}</p>
      </div>
    );
  }
}

export default MatchItem;
