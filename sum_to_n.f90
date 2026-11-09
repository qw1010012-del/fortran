program sum_to_n                                   ! 宣告主程式，名稱為 sum_to_n
  implicit none                                    ! 關閉隱式型別，所有變數都必須明確宣告
  integer :: n, i                                  ! n：使用者輸入的上限；i：迴圈計數器
  integer(kind=8) :: total                         ! total：累加結果，用 8 位元組整數避免 N 很大時溢位

  write(*, '(A)', advance='no') 'Enter N: '        ! 提示使用者輸入 N，不換行
  read(*, *) n                                     ! 從標準輸入讀入 N

  if (n < 1) then                                  ! 檢查輸入是否為正整數
    write(*, '(A)') 'N must be a positive integer.' ! 輸入不合法時印出錯誤訊息
    stop                                           ! 結束程式
  end if                                           ! 結束 if 判斷

  total = 0                                        ! 累加器歸零
  do i = 1, n                                      ! 迴圈：i 從 1 跑到 n
    total = total + i                              ! 把 i 加進總和
  end do                                           ! 結束迴圈

  write(*, '(A, I0, A, I0)') 'Sum of 1 to ', n, ' = ', total ! 輸出結果，I0 表示依數字長度自動調整寬度
end program sum_to_n                               ! 主程式結束
