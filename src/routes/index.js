const express = require('express')
const productRoutes = require('./product')
const categoryRoutes = require('./category')
const historyRoutes = require('./history')
const userRoutes = require('./user')
const emailRoutes = require('./email')

const router = express.Router()

router
  .use('/product', productRoutes)
  .use('/category', categoryRoutes)
  .use('/history', historyRoutes)
  .use('/user', userRoutes)
  .use('/email', emailRoutes)

module.exports = router
