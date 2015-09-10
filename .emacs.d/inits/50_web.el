(el-get-bundle web-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . web-mode))

(add-hook 'web-mode-hook
          (lambda ()
            (defun web-mode-indent (num)
              (interactive "nIndent: ")
              (setq web-mode-markup-indent-offset num)
              (setq web-mode-css-indent-offset num)
              (setq web-mode-style-padding num)
              (setq web-mode-code-indent-offset num)
              (setq web-mode-script-padding num)
              (setq web-mode-block-padding num))
            (web-mode-indent 2)))

(el-get-bundle! gongo/json-reformat)
(setq json-reformat:indent-width 2)