import axios from 'axios'; // If using ES5:  const axios = require('axios')
import moment from 'moment'; // If using ES5:  const moment = require('moment')
import cryptoJS from 'crypto-js'; // If using ES5:  const crypto = require('crypto')

async function callAccelerator(userId, payload, createUser = false) {
  const key = '12345';
  const url = 'BJSS Accelerator';

  const urlSplit = /^.*?\/\/(.*?)\/bots\/(.*?)\/integrations\/http\/(.*?)$/g.exec(url);
  const runtime = decodeURIComponent(urlSplit[1]);
  const botName = decodeURIComponent(urlSplit[2]);
  const integrationId = decodeURIComponent(urlSplit[3]);

  const DATE_RFC2822 = 'ddd, DD MMM YYYY HH:mm:ss ZZ';
  const dateStr = moment()
    .locale('en')
    .format(DATE_RFC2822);

  const expectedStringToHash = [botName, integrationId, dateStr].join('|');
  const hash = cryptoJS.HmacSHA1(expectedStringToHash, key).toString();

  const options = {
    method: createUser ? 'GET' : 'POST',
    headers: {
      'X-Request': dateStr,
      authorization: 'Chatbot ' + hash,
      'Content-Type': 'application/json',
    },
    data: !createUser && { userId, payload },
    url: `${url}${createUser ? '/session_id' : ''}`,
  };

  return (await axios(options)).data;
}

export default callAccelerator;
