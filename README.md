vim-resize
==========

## Usage
* use your costume key map in normal mode to resize a vertical or horizontal split in the desired direction

## Configuration

### Mappings

You can map resize keys like this:

    nnoremap <silent> <c-left> :call ResizeLeft(3)<cr>
    nnoremap <silent> <c-down> :call ResizeDown(1)<cr>
    nnoremap <silent> <c-up> :call ResizeUp(1)<cr>
    nnoremap <silent> <c-right> :call ResizeRight(3)<cr>
