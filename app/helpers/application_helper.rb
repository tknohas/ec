module ApplicationHelper
  def delete_button(path)
    button_to '削除', path, method: :delete, data: { turbo_confirm: '本当に削除しますか？' },
    class: 'bg-transparent hover:bg-red-500 text-red-700 font-semibold hover:text-white py-2 px-4 border border-red-500 hover:border-transparent rounded ml-2'
  end
end
