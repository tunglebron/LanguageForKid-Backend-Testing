var modelUser = require('./../models/User');
var bcrypt = require('bcrypt');
const SALT_ROUNDS = 10;

var register = async (req, res) => {
  let username = req.body.username.toLowerCase();;
	let password = req.body.password;
  let email = req.body.email.toLowerCase();

  const getUser = await modelUser.getUserName(username);
  const getEmail = await modelUser.getUserName(email);

  if (getUser) res.status(400).send({ error: true, message: 'User name existed!' });
  if (getEmail) res.status(400).send({ error: true, message: 'Email existed!' });
  console.log(getUser);
  res.status(200).send({message: 'Save user successfully!'});
  // if (!getUser && !getEmail) {
  //   const hashPassword = bcrypt.hashSync(password, SALT_ROUNDS);
  //   const createUser = await modelUser.createUser(username, hashPassword, email);
  //   if (!createUser) {
	// 		res
	// 			.status(400)
	// 			.send({ error: true, message: 'Error occurs when saving user account!' });
	// 	} else {
  //     res.status(200).send({message: 'Save user successfully!'});
  //   }
  // }
}

module.exports = {
  register
}