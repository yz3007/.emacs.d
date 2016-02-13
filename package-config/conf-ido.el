
(use-package
  flx-ido
  :ensure t
  :bind* (:map ido-completion-map
              (("M-n" . ido-next-match)
               ("C-n" . ido-next-match)
               ("M-p" . ido-prev-match)
               ("C-p" . ido-prev-match)))
  :init
  (require 'ido)
  (require 'flx-ido)
  (require 'ido-ubiquitous)

  (ido-mode 1)
  (ido-everywhere 1)
  (setq flx-ido-threshhold 500)
  (flx-ido-mode 1)
  ;; disable ido faces to see flx highlights.
  (setq ido-use-faces nil)
  ;; set gc threshold to 20mb
  (setq gc-cons-threshold 20000000)
  (setq ido-enable-flex-matching t)
  (setq ido-use-filename-at-point nil)
  (setq ido-auto-merge-work-directories-length -1)
  (setq ido-use-virtual-buffers t)

  ;; Allow the same buffer to be open in different frames
  (setq ido-default-buffer-method 'selected-window))

(use-package ido-vertical-mode
             :ensure t
             :init
             (ido-vertical-mode 1))

(use-package ido-ubiquitous
             :ensure t
             :init
             (ido-ubiquitous-initialize))

(provide 'conf-ido)
