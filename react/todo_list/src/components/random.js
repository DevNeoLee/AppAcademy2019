//random.js
// main components are through..
// 

import React, { Component } from 'react';

class Random extends Component {
    render() {

        return (this.props.kko.map((o) => (
            <div>
                {o.id}.
                 {o.title} <br />
                completed:{o.completed}<br />

            </div>
        )));
    }
}

export default Random;