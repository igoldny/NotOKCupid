import React from 'react';
import AboutContainer from '../profile/about_container';

class Tabs extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      selectedIndex: 0,
      selectedContent: this.props.tabs[0],
    };

    this.tabArray = this.tabArray.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    this.setState({selectedContent: nextProps.tabs[0]});
  }

  handleClick(idx) {
    this.setState({ selectedIndex: idx, selectedContent: this.props.tabs[idx] });
  }

  tabArray() {
    let title;

    return (
      this.props.tabNames.map((tab, idx) => {
        if(this.state.selectedIndex === idx) {
          return (
            <li key={idx} onClick={() => this.handleClick(idx)} className="selected-li">
              {tab}
            </li>
          );
        } else {
          return (
            <li key={idx} onClick={() => this.handleClick(idx)}>
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
        <ul className={this.props.styling + " tabs group"}>
          {this.tabArray()}
        </ul>
        <div>{this.state.selectedContent}</div>
      </div>
    );
  }

}

export default Tabs;
