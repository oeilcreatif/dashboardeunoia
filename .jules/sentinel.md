## 2024-09-30 - Fix XSS in innerHTML
**Vulnerability:** Widespread use of user-supplied data interpolated into `innerHTML` strings directly, leading to DOM-based XSS. This allowed executable JavaScript injected into transaction descriptions, subscription names, and categories.
**Learning:** This single-file frontend architecture extensively relied on `innerHTML` for rendering without any templating engine that auto-escapes inputs. This meant that manual escaping is required everywhere user data is presented.
**Prevention:** Implement a global escape utility function and establish a convention of wrapping any user input interpolated within `innerHTML` in `esc()`.
