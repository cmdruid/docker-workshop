import express from 'express'

const LISTEN_PORT = 3000

const app = express()

app.use(express.urlencoded({ extended: false }))
app.use(express.json({ limit: 1000 }))

app.get('/hello', async (req, res) => {
  console.log('Request:', req.url, req.query)
  return res.status(200).send('world!')
})

app.post('/hello', async (req, res) => {
  console.log('Request:', req.url, req.body)
  return res.status(200).json(req.body)
})

app.listen(LISTEN_PORT, () => {
  console.log('Express server now listening on port:', LISTEN_PORT)
})