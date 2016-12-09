import React from 'react';
import AboutContainer from './about_container';

const TABS = {
  About: <AboutContainer />,
  Photos:
    <ul>
      <li>photo1</li>
      <li>photo2</li>
      <li>photo3</li>
    </ul>,
  Questions:
    <ul>
      <li>question1</li>
      <li>question2</li>
      <li>question3</li>
    </ul>
};

class ProfileTabs extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      selectedIndex: 0,
      selectedContent: <AboutContainer />,
    };

    this.tabArray = this.tabArray.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(tab, idx) {
    this.setState({ selectedIndex: idx, selectedContent: TABS[tab] });
  }

  tabArray() {
    let title;

    return (
      Object.keys(TABS).map((tab, idx) => {
        if(this.state.selectedIndex === idx) {
          return (
            <li key={idx} onClick={() => this.handleClick(tab, idx)} className="selected-li">
              {tab}
            </li>
          );
        } else {
          return (
            <li key={idx} onClick={() => this.handleClick(tab, idx)}>
              <p>{tab}</p>
            </li>
          );
        }
      })
    );
  }

  render() {
    return (
      <div>
        <ul className="tabs group">
          {this.tabArray()}
        </ul>
        <div>{this.state.selectedContent}</div>
      </div>
    );
  }

}

export default ProfileTabs;
