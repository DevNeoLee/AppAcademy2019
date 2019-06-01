import React, { Component } from 'react'

export class Olaola extends Component {
    render() {
        return (
            <div>
                <hr></hr>
                <h1>olaola</h1>
                <div>
                   { this.props.jjj.map((jj) => (
                    jj.id
                ))
                }
                </div>
            </div>
        );
    }
}

export default Olaola;
