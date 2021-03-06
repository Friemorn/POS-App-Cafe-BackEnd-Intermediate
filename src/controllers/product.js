const productModels = require('../models/product')
const helper = require('../helpers/helpers')
const fs = require('fs')

const product = {
  getProductById: (req, res) => {
    const id = req.params.id
    productModels.getProductById(id)
      .then((result) => {
        if (result.length > 0) {
          helper.res(res, result, 200, null)
        } else {
          helper.res(res, [], 404, null)
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
  getAllProduct: (req, res) => {
    const search = req.query.search
    const sort = req.query.sort
    const limit = parseInt(req.query.limit)
    const page = parseInt(req.query.page)
    const offset = (page - 1) * limit
    const end = page * limit

    let countData
    let countSearch
    let next
    let previous
    let resultPage
    let endPage
    let endPageSearch

    productModels.getCount().then(result => {
      countData = result[0].count
      endPage = Math.ceil(countData / limit)
    })
    productModels.getSearchCount(search).then(result => {
      countSearch = result[0].searchCount
      endPageSearch = Math.ceil(countSearch / limit)
    })

    if (search) {
      productModels.searchProduct(search, limit, offset)
        .then((result) => {
          if (end < countSearch) {
            next = {
              'nextPage': page + 1,
              'nextUrl': process.env.BASE_URL+`/product?search=${search}&page=${page + 1}&limit=${limit}`
            }
          }

          if (offset > 0) {
            previous = {
              'previousPage': page - 1,
              'previousUrl': process.env.BASE_URL+`/product?search=${search}&page=${page - 1}&limit=${limit}`
            }
          }

          resultPage = {
            'currentPage': page,
            'perPage': limit,
            'totalData': countSearch,
            ...next,
            ...previous,
            'firstPage': 1,
            'lastPage': endPageSearch
          }

          if (result.length > 0) {
            helper.response(res, resultPage, result, 200, null)
          } else {
            helper.response(res, resultPage, [], 200, null)
          }
        })
        .catch((err) => {
          console.log(err)
        })
    } else if (sort) {
      productModels.sortProduct(sort, limit, offset)
        .then((result) => {
          if (end < countData) {
            next = {
              'nextPage': page + 1,
              'nextUrl': process.env.BASE_URL+`/product?sort=${sort}&page=${page + 1}&limit=${limit}`
            }
          }

          if (offset > 0) {
            previous = {
              'previousPage': page - 1,
              'previousUrl': process.env.BASE_URL+`/product?sort=${sort}&page=${page - 1}&limit=${limit}`
            }
          }

          resultPage = {
            'currentPage': page,
            'perPage': limit,
            'totalData': countData,
            ...next,
            ...previous,
            'firstPage': 1,
            'lastPage': endPage
          }

          if (result.length > 0) {
            helper.response(res, resultPage, result, 200, null)
          } else {
            helper.response(res, resultPage, [], 200, null)
          }
        })
        .catch((err) => {
          console.log(err)
        })
    } else {
      productModels.getAllProduct(limit, offset)
        .then((result) => {
          if (end < countData) {
            next = {
              'nextPage': page + 1,
              'nextUrl': process.env.BASE_URL+`/product?page=${page + 1}&limit=${limit}`
            }
          }

          if (offset > 0) {
            previous = {
              'previousPage': page - 1,
              'previousUrl': process.env.BASE_URL+`/product?page=${page - 1}&limit=${limit}`
            }
          }

          resultPage = {
            'currentPage': page,
            'perPage': limit,
            'totalData': countData,
            ...next,
            ...previous,
            'firstPage': 1,
            'lastPage': endPage
          }

          if (result.length > 0) {
            helper.response(res, resultPage, result, 200, null)
          } else {
            helper.response(res, resultPage, [], 200, null)
          }
        })
        .catch((err) => {
          console.log(err)
        })
    }
  },
  updateProduct: (req, res) => {
    if (req.roleId == '1') {
      const id = req.params.id
      const {
        name,
        price,
        idCategory
      } = req.body
      const data = {
        name,
        price,
        idCategory,
        updatedAt: new Date()
      }
      if (req.file) {
        productModels.getProductById(id).then(result => {
          const product = result[0]
          const img = product.image.replace(process.env.BASE_URL+'/uploads/', '')
          const filePath = `./uploads/${img}`;
          fs.unlinkSync(filePath)
        })
        data.image = process.env.BASE_URL+`/uploads/${req.file.filename}`
      }
      productModels.updateProduct(id, data)
        .then((result) => {
          helper.res(res, result, 200, null)
        })
        .catch((err) => {
          console.log(err)
        })
    } else {
      helper.res(res, 'Update Product is Not Allowed', 403, null)
    }
  },
  deleteProduct: (req, res) => {
    if (req.roleId == '1') {
      const id = req.params.id
      productModels.getProductById(id).then(result => {
        const product = result[0]
        const img = product.image.replace(process.env.BASE_URL+'/uploads/', '')
        const filePath = `./uploads/${img}`
        fs.unlinkSync(filePath)
      })
      productModels.deleteProduct(id)
        .then((result) => {
          helper.res(res, result, 200, null)
        })
        .catch((err) => {
          console.log(err)
        })
    } else {
      helper.res(res, 'Delete Product is Not Allowed', 403, null)
    }
  },
  insertProduct: (req, res) => {
    if (req.roleId == '1') {
      const {
        name,
        price,
        idCategory
      } = req.body
      const data = {
        name,
        image: process.env.BASE_URL+`/uploads/${req.file.filename}`,
        price,
        idCategory,
        createdAt: new Date(),
        updatedAt: new Date()
      }
      productModels.insertProduct(data)
        .then((result) => {
          console.log(result)
          helper.res(res, result, 200, null)
        })
        .catch((err) => {
          console.log(err)
        })
    } else {
      helper.res(res, 'Insert Product is Not Allowed', 403, null)
    }
  }
}

module.exports = product
