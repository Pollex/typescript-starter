import { expect } from 'chai';
import App from './app';

describe('App', () => {
  beforeEach(function() {
    this.app = new App();
  });

  it('Should start', function() {
    const success = this.app.start();
    expect(success).to.be.true;
  });
});
