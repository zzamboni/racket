#lang web-server/insta

(define (start request)
  (response/xexpr
   '(html
     (head (title "My Blog"))
     (body (h1 "Under construction")))))

(struct post (title body))

(define BLOG (list (post "First post!"
                         "Hey, this is my first post!")))

(define (render-greeting a-name)
  (response/xexpr
   `(html (head (title "Welcome"))
          (body (p ,(string-append ("Hello " a-name)))))))
