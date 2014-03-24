<?php

// Put your device token here (without spaces):
//$deviceToken = 'c6a245613eccd0f6fa85088345c840f63f1475b17bc858aee091cb3163c26635';
$deviceToken = 'f96e941133037b5d5195dd6824533476f4417ac162e082067587dfb00682c592';
// Put your private key's passphrase here:
$passphrase = 'push';

// Put your alert message here:
$message = 'My first push notification!';

////////////////////////////////////////////////////////////////////////////////

$ctx = stream_context_create();
//stream_context_set_option($ctx, 'ssl', 'local_cert', 'doit_push_dev.pem');
stream_context_set_option($ctx, 'ssl', 'local_cert', 'doitim4iphone_dev.pem');
//stream_context_set_option($ctx, 'ssl', 'passphrase', $passphrase);

// Open a connection to the APNS server
$fp = stream_socket_client(
	'ssl://gateway.sandbox.push.apple.com:2195', $err,
	$errstr, 60, STREAM_CLIENT_CONNECT|STREAM_CLIENT_PERSISTENT, $ctx);

if (!$fp)
	exit("Failed to connect: $err $errstr" . PHP_EOL);

echo 'Connected to APNS' . PHP_EOL;

// Create the payload body
$body['aps'] = array(
	'alert' => $message,
	'sound' => 'default',
	'content-available' => 1
	);

// Encode the payload as JSON
$payload = json_encode($body);

// Build the binary notification
$msg = chr(0) . pack('n', 32) . pack('H*', $deviceToken) . pack('n', strlen($payload)) . $payload;

// Send it to the server
$result = fwrite($fp, $msg, strlen($msg));

if (!$result)
	echo 'Message not delivered' . PHP_EOL;
else
	echo 'Message successfully delivered' . PHP_EOL;

// Close the connection to the server
fclose($fp);
