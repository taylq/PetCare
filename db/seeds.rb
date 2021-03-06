puts "1. Seeding Admin"
  User.create!(name: "Admin", email: "admin@gmail.com", password: "123456", role: 1, username: "admin", phone: "123456", address: "KTX Đại học FPT, Hòa Lạc", dob: DateTime.now)

puts "2. Seeding Doctor"
5.times do |i|
  User.create!(name: "Doctor#{i}", email: "doctor#{i}@gmail.com", password: "123456", role: 2, username: "doctor#{i}", phone: "123456", address: "KTX Đại học FPT, Hòa Lạc", dob: DateTime.now)
end

puts "3. Seeding Secretary"
  User.create!(name: "Secretary", email: "secretary@gmail.com", password: "123456", role: 5, username: "secretary", phone: "123456", address: "KTX Đại học FPT, Hòa Lạc", dob: DateTime.now)

puts "4. Seeding Member"
20.times do |i|
  User.create!(name: FFaker::Name.unique.name, email: "member#{i}@gmail.com", password: "123456", role: 0, username: "member#{i}", phone: "123456", address: "KTX Đại học FPT, Hòa Lạc", dob: DateTime.now)
end
puts "5. Seeding Director"
  User.create!(name: "Director", email: "director@gmail.com", password: "123456", role: 4, username: "director", phone: "123456", address: "KTX Đại học FPT, Hòa Lạc", dob: DateTime.now)

puts "6. Seeding Nurse"
5.times do |i|
  User.create!(name: "Nurse#{i}", email: "nurse#{i}@gmail.com", password: "123456", role: 3, username: "nurse#{i}", phone: "123456", address: "KTX Đại học FPT, Hòa Lạc", dob: DateTime.now)
end
puts "7. Seeding Desease"
    Desease.create!(pet_type: 1,
                    name: "Bênh dại",
                    symptom: "nhớt dãi, hay ngáp, đồng tử mắt dãn ra, lười ăn, hung hãn, giai đoạn cuối tê liệt, suy hô ",
                    reason: "Virus dại chủ yếu lây truyền qua các vết cắn, vết liếm vào vết thương của một số động vật mắc bệnh dại. Trong một số ít trường hợp, bệnh có thể lây truyền qua đường hô hấp.",
                    treatment: "Tính tới thời điểm hiện tại chưa phương pháp hoặc thuốc điều trị nào cho mèo bị bệnh dại. Cách tốt nhất là iêm vacxin phòng dại cho mèo theo định kỳ hàng . Hạn chế tiếp xúc với những con vật có biểu hiện bệnh dại",
                    description: "Bệnh dại là căn bệnh viêm nhiễm virus lây truyền qua vết cắn của một con vật đã nhiễm bệnh,nhiễm trùng gây ảnh hưởng trực tiếp tới hệ thần kinh trung ương, làm cho mèo bị sốt và có  những động thái khác thường.")
    Desease.create!(pet_type: 1,
                    name: "Nhiễm trùng đường hô hấp",
                    symptom: "Hắt xì, chảy nước mắt, đồ ghèn, ho, khó thở, sổ mũi, ăn không ngon, biếng ăn kéo dài, sốt kéo dài",
                    reason: "Trong khi những bệnh siêu vi có một tỷ lệ mắc bệnh cao ở mèo con, thì bệnh Chlamydia này xuất hiện ở tất cả các lứa tuổi và tất cả các giống mèo, tỉ lệ nhiễm cao khi mèo được nuôi nhót và có tỉ lệ con trong đàn cao, hay nuôi trong củi thay vì nuôi tự do hoặc nơi có nguy cơ nhiễm trùng cao. Bệnh rất dễ lây lan vì vi khuẩn được phát tán một cách dễ dàng, sự lan truyền bệnh có thể xảy ra ngay cả khi không tiếp xúc trực tiếp với một con vật bị nhiễm bệnh, các vi khuẩn từ mèo bệnh khi ho hoặc hắt hơi ra ngoài không khí, có thể được phát tán đi xa hoặc dính vào quần áo người chăm sóc thú rồi từ đó có thể mang vi khuẩn qua những đàn khác và làm lây lan bệnh khi tiếp xúc với thú khỏe, hoặc mèo có thể tiếp xúc với các vật dụng bị nhiễm khuẩn, chẳng hạn như ổ nằm hoặc tô, bát chứa thức ăn…",
                    treatment: "Điều trị bệnh nhiễm trùng đường hô hấp trên của mèo thường là điều trị ngoại trú, bắt đầu với các loại thuốc kháng sinh như Tetracycline hoặc Doxycycline. Kháng sinh có thể cho uống hoặc dùng bên ngoài như nhỏ hay xịt vào mắt. Toàn bộ quá trình điều trị có thể mất đến sáu tuần.",
                    description: "Là 1 bệnh cấp tính về đường hô hấp trên ở mèo do virus Feline herpes gây nên. Virus feline herpes là virus phổ biến nhất gây nên các dịch  bệnh về đường hô hấprên ở mèo, lây lan rất nhanh đối với mèo con và mèo được nuôi nhốt tập thể như các trại mèo hay tại các hộ gia  đình nuôi nhiều mèo. Mèo con và mèo già dễ lây bệnh cũng như có nguy cơ tử vong cao hơn mèo trưởng thành khỏe mạnh. Một khi mèo bị nhiễm virus feline herpes, nó sẽ tồn tại suốt cuộc đời cá thể mèo.")
    Desease.create!(pet_type: 1,
                    name: "Bệnh Feline Panleukopenia (FP)",
                    symptom: "Bỏ ăn uống, uể oải, di chuyển ít, đau đớn, nôn, tiêu chảy, tiêu chảy ra máu, giảm cân, sốt cao, lông thô cứng, trầm cảm, chán ăn, bàn chân giấu bên dưới cơ thể trong thời gian dài, mệt mỏi, cơ thể thiếu linh hoạt, đi loạng choạng, mất thăng bằng, cơ thể run rẩy lắc lư, co giật",
                    reason: "Bệnh Felnine Penleukopenia rất dễ lây lan. Nó hiện diện bất cứ nơi nào nhưng không lây truyền sang chó. Virus Panleukopenia lây lan trực tiếp qua sự tiếp xúc của mèo khỏe mạnh với mèo bị nhiễm bệnh. Hoặc khi tiếp xúc với chất bài tiết của mèo bệnh như phân, nước tiểu, nước bọt và chất nôn mửa… Sự nhiễm trùng sẽ lây lan qua đường hô hấp hoặc việc tiêu hóa chất lây nhiễm. Bọ chét và ruồi cũng có thể là nguyên nhân lan truyền bệnh này. Ngoài ra, thực phẩm, quần áo hoặc bàn tay tiếp xúc của người từ mèo bệnh sang mèo khỏe cũng có thể làm lây lan bệnh. Virus Panleukopenia có sức sống bền bỉ. Nó có thể tồn tại nhiều năm trong môi trường bị ô nhiễm. Mèo con trong độ tuổi từ 2 – 6 tháng có nguy cơ mắc bệnh cao nhất cũng như mèo mang thai và mèo bị tổn hại hệ miễn dịch.",
                    treatment: "Đến nay vẫn chưa có cách chữa trị cụ thể cho bệnh này. Việc điều trị thông thường bao gồm sự chăm sóc đặc biệt cho chú mèo của bạn. Việc này nhằm giúp cơ thể chúng có thể sản xuất đủ kháng thể và trung hòa virus như tiêm thuốc kháng sinh. Chống lại việc nhiễm trùng và xâm nhập của các vi khuẩn thứ cấp. Đặc biệt là các loại vi khuẩn xâm nhập vào đường ruột. Ngoài ra, chủ nuôi cần bổ sung nước uống cho mèo. Để chống mất nước nên bổ sung vitamin. Kiểm soát việc nôn mửa và tiêu chảy. Giữ ấm cơ thể cho chúng. Mèo lúc này đặc biệt rất cần sự yêu thương và vuốt ve. Nếu chúng có thể sống sót trong vòng 5 ngày từ khi mắc bệnh thì chúng sẽ có nhiều cơ hội để phục hồi hơn. Điều đặc biệt quan trọng là phải cách ly ngay mèo bị nghi ngờ nhiễm bệnh vói những con mèo khác. Khử trùng khu vực cách ly và các vật dụng dành cho chúng. Việc cách ly sẽ ngăn chặn sự lây lan của căn bệnh. Sau đó, tốt nhất hãy đưa chúng tới bệnh viện thú y gần nhất để điều trị.",
                    description: "Bệnh Felnine Penleukopenia ở mèo (hay còn gọi là Bệnh Giảm Bạch Cầu – Viêm Ruột Truyền Nhiễm). Đây là bệnh do virus Feline Panleukopenia (FPV) thuộc nhóm virus Parvovirus gây ra cho hầu hết tất cả các giống mèo.")
    Desease.create!(pet_type: 1,
                    name: "Bệnh FIV",
                    symptom: " Nhiễm trùng răng miệng, bệnh về đường hô hấp, bệnh về mắt, bệnh về đường tiêu hóa, nhiễm trùng da và tai, bệnh về thần kinh, hạch, thiếu máu,ung thư",
                    reason: "Cũng giống như HIV chỉ lây nhiễm cho người, virus FIV chỉ lây truyền qua mèo và không lây lan sang các loại động vật có vú khác, FIV cũng không lây sang người và không có nguy cơ lây nhiễm từ những người tiếp xúc với mèo dương tính với FIV cho những chú mèo bình thường khác. Virus FIV rất dễ bị vô hiệu hóa bởi tia cực tím, nhiệt độ cao, chất tẩy rửa... và FIV thường lây lan thông qua vết cắn từ nước bọt của mèo bệnh nhiễm vào máu và không lây qua đường hô hấp, ăn uống. Mèo đực có khả năng mắc bệnh cao gấp 2 lần mèo cái vì thói quen cắn nhau. Ngoài ra, mèo mẹ bị nhiễm bệnh trong khi mang thai hoặc cho con bú có thể lây nhiễm cho mèo con vì FIV cũng có trong tử cung và sữa mèo dù rất hiếm. Mèo mẹ bị nhiễm FIV trước khi mang thai thường không lây truyền qua mèo con.",
                    treatment: "Thực tế thì vẫn chưa có kháng thể để điều trị một cách cụ thể đối với mèo nhiễm FIV. Và vì mèo có thể mang vi khuẩn trong một thời gian dài trước khi các triệu chứng xuất hiện, nên việc điều trị tập trung chủ yếu vào việc kéo dài giai đoạn không có triệu chứng, hoặc khi các triệu chứng dần biểu hiện ra, nhằm giảm bớt các hoạt động của vi khuẩn theo các dấu hiệu của căn bệnh mà mèo đang mắc phải. Trong suốt quá trình điều trị, chú mèo cần được cung cấp chế độ chăm sóc đặc biệt, dinh dưỡng tốt và tiêm kháng sinh các bệnh nhiễm trùng cơ hội. Nếu chú mèo của bạn là mèo đực, thì chú nên bị thiến để giảm nguy cơ chiến đấu và lây lan nhiễm trùng. Ngoài ra, nên nhốt mèo bệnh trong nhà để hạn chế việc lây lan bệnh sang mèo khác. Duy trì dinh dưỡng chất lượng tốt - tránh thịt, trứng và các sản phẩm từ sữa chưa được tiệt trùng nhằm giảm nguy cơ tiếp xúc với ký sinh trùng và vi khuẩn có thể gây bệnh. Chẩn đoán kịp thời và điều trị thích hợp bệnh FIV tùy theo giai đoạn và những bệnh đang mắc phải nhằm ức chế sự gia tăng của bệnh và vi khuẩn trong cơ thể có thể giúp mèo nhiễm FIV duy trì chất lượng cuộc sống trong một thời gian dài.",
                    description: "Hội chứng suy giảm miễn dịch ở mèo (FIV) là bệnh nhiễm trùng quan trọng đối với họ nhà mèo, có mặt khắp nơi trên thế giới do một loại virus thuộc họ Retrovirus gây ra. Đó là loại virus cùng họ với virus giảm bạch cầu ở mèo (FeLV) và virus gây ra hội chứng suy giảm miễn dịch mắc phải ở người là HIV.")
    Desease.create!(pet_type: 1,
                    name: "Bệnh FIP dạng ướt/ tiết dịch",
                    symptom: "Cơ thể bị đau, lông thô ráp, ngu si đần độn, thờ ơ, chán nản, sốt dai dẳng, không muốn ăn, giảm cân, tiêu chảy, bụng to lên dần dần (bụng phệ, sưng bụng), tích tụ dịch trong khoang ngực, khó thở, hắt hơi, chảy nước mũi, hôn mê",
                    reason: "FIP thường theo sau nhiễm virus coronavirus, thường không gây ra bất kỳ triệu chứng bên ngoài nào. Người ta cho rằng có một số loại coronavirus đột biến vào viêm phúc mạc nhiễm trùng, hoặc do chính chúng hoặc do hậu quả của một khiếm khuyết trong đáp ứng miễn dịch của mèo. Mộ điều làm phức tạp vấn đề là một coronavirus có thể nằm im trong cơ thể mèo trong nhiều tháng trước khi đột biến thành FIP. Virus FIP sau đó lây nhiễm vào các tế bào hồng cầu, sử dụng chúng làm phương tiện để xâm nhập toàn bộ cơ thể.",
                    treatment: "Bệnh này rất khó điều trị và cần được chăm sóc hỗ trợ tốt. Với dạng không tiết dịch, điều trị có thể bằng cách sử dụng thuốc kháng sinh, thuốc chống viêm và thuốc ức chế miễn dịch để làm chậm sự tiến triển của bệnh lây lan. Đây không phải là cách chữa trị, mà là một cách để làm cho mèo của bạn thoải mái hơn và kéo dài tuổi thọ của nó thêm vài tháng. Bác sĩ thú y của bạn có thể quyết định loại bỏ chất lỏng tích lũy trog khoang bụng để giảm áp lực. Nếu mèo của bạn mắc FIP, thì thường không có cách điều trị nào là triệt để, vì bệnh lây lan quá nhanh. Tiên lượng tổng thể đối với mèo mắc bệnh là kém. Không có cách điều trị cụ thể nào có vẻ hiệu quả và phần lớn bệnh nhân chết vì biến chứng.",
                    description: "Viêm phúc mạc truyền nhiễm ở mèo (FIP) là một bệnh do virus ở mèo mang tỷ lệ tử vong cao do tính xâm lấn đặc trưng và không phản ứng sốt, cùng với các biến chứng khác. Bệnh này có tỷ lệ tương đối cao xảy ra ở các hộ gia đình nuôi nhiều mèo so với những gia đình chỉ có một con mèo. Rất khó để chẩn đoán, kiểm soát và ngăn ngừa, và trong trường hợp bùng phát trong quá trình mèo sinh sản ở chuồng hoặc lồng mèo, có thể dẫn đến số lượng tử vong cao. Nó thường lây lan qua việc hít phải chất gây ô nhiễm không khí và phân bị nhiễm bệnh, nhưng virus cũng có thể lây truyền qua con người mà đã từng tiếp xúc với chúng, hoặc hoạt động trên các bề mặt đã bị ô nhiễm.")
	Desease.create!(pet_type: 1,
                    name: "Bệnh FIP dạng khô/ không tiết dịch",
                    symptom: "Cơ thể bị đau, lông thô ráp, ngu si đần độn, thờ ơ, chán nản, thiếu máu, vàng da, tiêu chảy, sốt, trầm cảm, viêm các phần khác nhau của mắt, mất khả năng điều phối chuyển động, mất thị lực",
                    reason: "FIP thường theo sau nhiễm virus coronavirus, thường không gây ra bất kỳ triệu chứng bên ngoài nào. Người ta cho rằng có một số loại coronavirus đột biến vào viêm phúc mạc nhiễm trùng, hoặc do chính chúng hoặc do hậu quả của một khiếm khuyết trong đáp ứng miễn dịch của mèo. Mộ điều làm phức tạp vấn đề là một coronavirus có thể nằm im trong cơ thể mèo trong nhiều tháng trước khi đột biến thành FIP. Virus FIP sau đó lây nhiễm vào các tế bào hồng cầu, sử dụng chúng làm phương tiện để xâm nhập toàn bộ cơ thể.",
                    treatment: "Bệnh này rất khó điều trị và cần được chăm sóc hỗ trợ tốt. Với dạng không tiết dịch, điều trị có thể bằng cách sử dụng thuốc kháng sinh, thuốc chống viêm và thuốc ức chế miễn dịch để làm chậm sự tiến triển của bệnh lây lan. Đây không phải là cách chữa trị, mà là một cách để làm cho mèo của bạn thoải mái hơn và kéo dài tuổi thọ của nó thêm vài tháng. Bác sĩ thú y của bạn có thể quyết định loại bỏ chất lỏng tích lũy trog khoang bụng để giảm áp lực. Nếu mèo của bạn mắc FIP, thì thường không có cách điều trị nào là triệt để, vì bệnh lây lan quá nhanh. Tiên lượng tổng thể đối với mèo mắc bệnh là kém. Không có cách điều trị cụ thể nào có vẻ hiệu quả và phần lớn bệnh nhân chết vì biến chứng.",
                    description: "Viêm phúc mạc truyền nhiễm ở mèo (FIP) là một bệnh do virus ở mèo mang tỷ lệ tử vong cao do tính xâm lấn đặc trưng và không phản ứng sốt, cùng với các biến chứng khác. Bệnh này có tỷ lệ tương đối cao xảy ra ở các hộ gia đình nuôi nhiều mèo so với những gia đình chỉ có một con mèo. Rất khó để chẩn đoán, kiểm soát và ngăn ngừa, và trong trường hợp bùng phát trong quá trình mèo sinh sản ở chuồng hoặc lồng mèo, có thể dẫn đến số lượng tử vong cao. Nó thường lây lan qua việc hít phải chất gây ô nhiễm không khí và phân bị nhiễm bệnh, nhưng virus cũng có thể lây truyền qua con người mà đã từng tiếp xúc với chúng, hoặc hoạt động trên các bề mặt đã bị ô nhiễm.")
    Desease.create!(pet_type: 1,
                    name: "Bệnh Chlamydia",
                    symptom: "Hắt xì, chảy nước mắt, có gỉ mắt, ho, khó thở, sổ mũi, chán ăn, sốt, viêm phổi",
                    reason: "Mèo con có tỉ lệ nhiễm bệnh cao hơn so với các lứa tuổi khác, tuy nhiên tình trạng này có mặt ở mọi lứa tuổi và giống mèo. Mèo được lưu trú trong các khu đông đúc với các động vật khác, như trong khu nội trú, có nguy cơ lây nhiễm cao. Việc lây truyền có thể diễn ra ngay cả khi mèo nhà bạn không tiếp xúc trực tiếp với động vật bị nhiễm bệnh, Vì các vi khuẩn từ việc ho hoặc hắt hơi có thể bám vào người chăm sóc mang vi khuẩn và lây lan nó bằng cách chạm vào, hoặc ôm ấp con mèo khác.",
                    treatment: "Điều trị được tiến hành trên cơ sở ngoại trú tại nhà, bắt đầu với các loại thuốc kháng sinh phổ rộng như tetracycline hoặc doxycycline. Các thuốc kháng sinh có thể được dùng bằng đường uống hoặc là nhỏ trực tiếp vào mắt. Toàn bộ quá trình điều trị có thể mất đến sáu tuần con mèo mới có thể hồi phục.",
                    description: "Nhiễm Chlamydia là một bệnh nhiễm trùng có thể xảy ra ở mèo bị các bệnh về mắt (viêm kết mạc) và các quá trình viêm đường hô hấp trên (viêm mũi, viêm họng, viêm phế quản), trong các trường hợp hiếm hoi hơn hệ thống tình dục bị ảnh hưởng.")
    Desease.create!(pet_type: 1,
                    name: "Bệnh FeLV",
                    symptom: "Thiếu máu, lờ phờ, sụt cân, phì đại hạch bạch huyết, tiêu chảy kéo dài, nhiễm trùng tai ngoài và tình trạng da kém, sốt, dáng đi hoặc chuyển động loạng choạng, rời rạc hoặc như say rượu, viêm mũi, viêm nướu và/hoặc mô miệng",
                    reason: "Bệnh bạch cầu ở mèo thường được mắc phải từ việc lây truyền mèo sang mèo (ví dụ: cắn, tiếp xúc gần gũi, chải chuốt và bát thức ăn hoặc khay cát vệ sinh dùng chung). Nó cũng có thể lây truyền sang mèo con khi sinh hoặc qua sữa mẹ. Mèo con dễ bị nhiễm loại virus này hơn, mèo đực và mèo hay đi ra ngoài trời cũng vậy.",
                    treatment: "Bác sĩ thú y sẽ kê thuốc để điều trị các triệu chứng và nguyên nhân gây bệnh bạch cầu ở mèo. Sau đó, nên chủng ngừa các loại virus đường hô hấp và đường ruột hàng năm. Mèo của bạn sẽ không cần nhập viện trừ khi nó bị nhiễm trùng thứ phát nghiêm trọng, số lượng hồng cầu thấp hoặc sụt cân nghiêm trọng kèm theo mất cơ. Trong những trường hợp này, mèo sẽ được giữ lại dưới sự chăm sóc của bệnh viện cho đến khi tình trạng của nó ổn định. Điều trị khẩn cấp, chẳng hạn như truyền máu, đôi khi cần thiết. Nhiễm trùng cơ hội là một mối quan tâm khác. Đây là những bệnh nhiễm trùng xảy ra gián tiếp do hệ thống miễn dịch suy yếu của động vật (do FeLV). Liệu pháp hỗ trợ, chẳng hạn như truyền dịch hoặc thực phẩm bổ sung dinh dưỡng, rất hữu ích trong những trường hợp này. Tiêu chảy, bệnh thận, hoặc mất cơ kéo dài (mãn tính) có thể cần một chế độ ăn uống đặc biệt. Ngoài ra, răng hoặc nướu bị nhiễm trùng phải được làm sạch; cần phải nhổ răng trong trường hợp nghiêm trọng.",
                    description: "Nhiễm virus gây bệnh bạch cầu ở mèo (FeLV) là một bệnh làm suy yếu hệ miễn dịch của mèo và gây ra một số loại ung thư nhất định. Việc nhiễm virus này là nguyên nhân của phần lớn các trường hợp tử vong ở mèo nhà, ảnh hưởng đến tất cả các giống. Mèo đực có nhiều khả năng bị nhiễm bệnh hơn mèo cái, và nó thường xảy ra trong giai đoạn từ một đến sáu tuổi.")
    Desease.create!(pet_type: 1,
                    name: "Bệnh cầu trùng",
                    symptom: "Tiêu chảy phân nước có dịch nhầy, tiêu chảy ra máu, yếu ớt và sốt, nôn mửa, sụt cân, nôn mửa, run rẩy và bối rối.",
                    reason: "Ở trong môi trường có các động vật bị nhiễm bệnh khác là nguyên nhân phổ biến nhất của loại bệnh này. Nó thường lây lan qua phân phân, nhưng một số loại cũng có thể lây lan qua việc ăn các vật chủ trung gian, chẳng hạn như chuột và chim. Tuy nhiên, thường do một mèo mẹ lây sang con do phân gần nhau và mèo con thường ăn các vật lạ và hay khám phá. Nhiễm cầu trùng đặc biệt nguy hiểm đối với mèo con, vì hệ miễn dịch của chúng vẫn còn chưa phát triển.",
                    treatment: "Phương pháp điều trị thường là ngoại trú. Một loại thuốc có chứa sulfa để tiêu diệt ký sinh trùng sẽ được kê, và thường có tác dụng nhanh và hiệu quả. Mèo sẽ cần được bù nước do tiêu chảy. Nếu mèo bị suy nhược do nhiễm trùng nặng, bác sĩ thú y có thể sẽ cần quan sát trong môi trường y học. Việc kiểm tra theo dõi phân trong vòng 1-2 tuần đầu của quá trình điều trị sẽ là cần thiết để đảm bảo rằng ký sinh trùng không còn tồn tại trong cơ thể nữa. Biện pháp phòng ngừa tốt nhất là cách ly động vật bị nhiễm bệnh. Xét nghiệm ưu tiên phân của mèo trong khi mang thai, hoặc sau khi sinh, để chắc chắn rằng nó không bị nhiễm bệnh sẽ giúp bảo vệ mèo con khỏi bị nhiễm trùng. Chủ nuôi mới có thể cần kiểm tra phân của mèo con để đảm bảo rằng không có cầu trùng, vì đây là một vấn đề phổ biến. Nếu bạn có mèo con bị nhiễm bệnh, hãy báo cho người lại giống hoặc người chủ nôi biết để có thể đưa ra phương pháp điều trị cho các con vật còn lại của họ.",
                    description: "Bệnh cầu trùng là một loại nhiễm trùng ký sinh trùng, gây ra bởi cầu trùng. Bệnh thường gây ra tiêu chảy phân nước, dịch nhầy ở động vật. Nếu không được điều trị, dần dần bệnh có thể gây tổn thương niêm mạc đường ruột của mèo. Với phương pháp điều trị thích hợp và kịp thời, kết quả sẽ rất tốt.")
    Desease.create!(pet_type: 1,
                    name: "Bệnh tiểu đường",
                    symptom: "Béo phì, khát nước quá mức, đi tiểu nhiều, chán ăn, sụt cân, chi sau yếu, lông có dầu và gàu, gan to, vàng da, lờ phờ",
                    reason: " - Di truyền, béo phì, viêm tụy  (pancreatitis), xảy ra đồng thời với một số bệnh: Cường giáp, bệnh Cushing, sử dụng một số loại thuốc",
                    treatment: "Việc kiểm soát bệnh tiểu đường đòi hỏi sự thận trọng và trao đổi thường xuyên giữa bạn và bác sĩ thú y. Bác sĩ sẽ lập một kế hoạch điều trị và kiểm soát riêng cho mèo của bạn dựa trên tình trạng bệnh hiện tại của mèo. Có nhiều loại insulin khác nhau và việc lựa chọn loại phù hợp với mèo của bạn sẽ được thực hiện bởi bác sĩ thú y. Liều lượng insulin sẽ cực kỳ cụ thể và cần phải được cho sử dụng vào cùng một thời điểm mỗi ngày; sự thay đổi trong liều lượng và thời gian có thể dẫn đến tình trạng kiểm soát đường huyết kém hoặc các biến chứng gây nguy hiểm đến tính mạng như nhiễm toan ceton. Sau khi việc điều trị ban đầu đã ổn định tình trạng của mèo, bác sĩ thú y có thể đề nghị cắt bỏ buồng trứng nếu đó là mèo cái, vì các hormone trong suốt thời kỳ động dục có thể khiến việc kiểm soát bệnh tiểu đường trở nên khó khăn.",
                    description: "Tiểu đường là một chứng rối loạn nội tiết do thiếu insulin tuyệt đối hoặc tương đối. Chuyển hóa là cách cơ thể tiêu hóa và sử dụng thức ăn cho việc tăng trưởng và tái tạo năng lượng; quá trình này phụ thuộc phần lớn vào lượng insulin đủ trong cơ thể.")
    Desease.create!(pet_type: 1,
                    name: "Nổi mụn trứng cá",
                    symptom: "Nổi mụn xung quanh cằm",
                    reason: "Nguyên nhân có thể do căng thẳng và ít được chải chuốt. Hoặc dị ứng với thuốc, tình trạng lớp biểu bì da, hay thậm chí là bát nhựa đựng thức ăn.",
                    treatment: "Bác sĩ thú y của bạn thường khuyên mua một loại dầu tắm hoặc gel đặc hiệu để tẩy rửa sạch những nơi bị mụn. Hơn nữa bạn cũng nên mua thuốc kháng sinh nếu mụn đi kèm với nhiễm khuẩn.",
                    description: "Nổi mụn trứng cá")
    Desease.create!(pet_type: 1,
                    name: "Nhiễm khuẩn",
                    symptom: "Viêm nang lông. ",
                    reason: "Chỗ ở không được vệ sinh thường xuyên",
                    treatment: "Mặc dù có thể dùng thuốc kháng sinh để điều trị nhiễm khuẩn tuy nhiên cần giải quyết hết tất cả những vấn đề về da tiềm. Nhằm ngăn chặn những vấn đề này có thể tái phát.",
                    description: "Trong rất nhiều trường hợp, nhiễm trùng da do vi khuẩn phát triển là một vấn đề khác ở da. Ví dụ như mụn trứng cá ở mèo sẽ làm cho nang lông của mèo dễ bị nhiễm trùng.")
    Desease.create!(pet_type: 1,
                    name: "Nhiễm trùng nấm men",
                    symptom: "Xuất hiện mủ đen, mủ vàng, ở tai có những vết đỏ, gãi tai liên tục",
                    reason: "Sinh ra do một bệnh khác ở mèo. Tai là một trong những nơi dễ bị nhiễm trùng nấm men nhất trên cơ thể mèo.",
                    treatment: "Sử dụng thuốc kháng nấm là một trong những cách tốt nhất điều trị nhiễm trùng nấm men. Nhưng bạn phải chắc chắn mang mèo cưng đến bác sĩ thú y để chuẩn đoán trước khi sử dụng bất kỳ biện pháp điều trị nào lên mèo.",
                    description: "Nhiễm trùng nấm men được gây ra bởi một loại nấm.")
    Desease.create!(pet_type: 1,
                    name: "Bệnh ecpet mảng tròn",
                    symptom: "Bong da, không mọc được lông",
                    reason: "Lây qua mèo hoang hoặc chỗ ở không được vệ sinh thường xuyên.",
                    treatment: "Việc điều trị sẽ phụ thuộc vào mức độ nghiêm trọng của bệnh. Nhưng có thể bao gồm dầu gội đặc trị, thuốc mỡ để bôi, hay thuốc uống.",
                    description: "Ecpet mảng tròn là một loại nấm khác có thể gây tổn thương cho da mèo khi chúng dưới 1 năm tuổi. Căn bệnh này có thể thương tổn trên đầu, tai, và chi trước của mèo")
    Desease.create!(pet_type: 1,
                    name: "Nấm sâu Sporotrichosis",
                    symptom: "Rỉ mũi",
                    reason: "Nấm sâu Sporotrichosis được cho là một mối quan tâm sức khỏe của cộng đồng. Bởi các loại nấm thường hay lây lan từ mèo sang người. Những người có hệ thống miễn dịch yếu thường rất dễ bị nhiễm nấm.",
                    treatment: "Những con mèo bị nhiễm nấm sâu Sporotrichosis cần được điều trị kịp thời. Người chăm sóc mèo phải hết sức cẩn thận và tỉ mỉ vấn đề vệ sinh để tránh lây lan bệnh.",
                    description: "Dù Sporotrichosis – một loại nấm khác hiếm gặp.")
    Desease.create!(pet_type: 1,
                    name: "Viêm da dị ứng",
                    symptom: "Gãi đầu, gãi cổ, cắn chân, cắn đuôi, gãi tai",
                    reason: "Mèo có thể có những phản ứng dị ứng với những sản phẩm chải chuốt làm đẹp, thực phẩm. Đặc biệt là các chất kích thích từ môi trường như phấn hoa hay những vết cắn của bọ chét.",
                    treatment: "Có rất nhiều phương pháp điều trị làm dịu ngứa da do dị ứng. Tuy nhiên, việc tránh tiếp xúc với các chất gây dị ứng vẫn là biện pháp tốt nhất cho vấn đề này.",
                    description: "Viêm da dị ứng")
    Desease.create!(pet_type: 1,
                    name: "Mèo rụng lông từng mảng",
                    symptom: "Rụng lông nhiều, hay xuất hiện những mảng da không có lông mọc.",
                    reason: "Mèo có thể có những phản ứng dị ứng với những sản phẩm chải chuốt làm đẹp, thực phẩm. Đặc biệt là các chất kích thích từ môi trường như phấn hoa hay những vết cắn của bọ chét.",
                    treatment: "Có rất nhiều phương pháp điều trị làm dịu ngứa da do dị ứng. Tuy nhiên, việc tránh tiếp xúc với các chất gây dị ứng vẫn là biện pháp tốt nhất cho vấn đề này.",
                    description: "Mèo rụng lông từng mảng")
    Desease.create!(pet_type: 1,
                    name: "Mèo bị bọ chét",
                    symptom: "Tróc lông, bong da một số chỗ",
                    reason: "Lây mèo qua mèo và ở môi trường xung quanh",
                    treatment: "Để diệt trừ bọ chét, bạn sẽ vừa điều trị cho mèo cưng. Đồng thời cũng phải khử sạch nội thất, giường, chăn, nệm. Hãy điều trị bọ chét cho tất cả vật nuôi trong nhà để công việc này đạt hiệu quả tối ưu.",
                    description: "Đây là loại có một loại côn trùng nhỏ bé sống nhờ vào máu mèo. Tuy nhiên, bọ chét là một vấn đề về da rất phổ biến ở mèo. Bạn có thể tìm thấy chúng hay phân của chúng trên bộ lông mèo.")
    Desease.create!(pet_type: 1,
                    name: "Ve tai",
                    symptom: "gãi tai nhiều, hay lắc đầu, có mùi nồng, bẩn ở tai",
                    reason: "Lây mèo qua mèo và ở môi trường xung quanh",
                    treatment: "Bạn có thể điều trị ve tai bằng các sản phẩm chuyên dụng theo chỉ định của bác sĩ thú y.",
                    description: "Ve tai là một loại ký sinh trùng nhỏ thích sống trong sáp và dầu ở bên trong tai mèo. Khi chúng ăn những thứ ở tai mèo. Chúng sẽ gây viêm nhiễm dẫn đến nhiễm trùng da hoặc nhiễm trùng tai rất nghiêm trọng.")
    Desease.create!(pet_type: 1,
                    name: "Rận",
                    symptom: "Gãi nhiều, thao thức, bồn chồn, rụng lông.",
                    reason: "Lây mèo qua mèo và ở môi trường xung quanh",
                    treatment: "bạn có thể điều trị rận bằng những phương pháp đặc trị.",
                    description: "Rận là một loại ký sinh trùng xuất hiện khi da bị khô. Chúng được tìm thấy ở những con mèo con ít được quan tâm và thường không được chú ý. Cũng giống như ve,  Vì rận là loài chỉ sống trên một số sinh vật nhất định, bạn sẽ không phải lo lắng việc rận sẽ lây từ mèo sang bạn.")
    Desease.create!(pet_type: 1,
                    name: "Lông đuôi thưa",
                    symptom: "rụng nhiều lông đuôi, đuôi ít lông",
                    reason: "Lây mèo qua mèo và ở môi trường xung quanh",
                    treatment: "Việc thiến mèo có thể loại bỏ được vấn đề này ở những con mèo đực. Một vài phương phá điều trị khác bao gồm chăm chải đuôi và sử dụng dầu tắm có công thức đặc trị.",
                    description: " Còn được gọi là tăng sản tuyến ở đuôi, lông đuôi thưa dùng để chỉ những tuyến hoạt động quá mức trên đuôi mèo. Các tuyến này sản xuất ra các chất bài tiết dạng sáp dẫn đến việc rụng lông và những thương tổn cứng giòn. Trong những trường hợp nặng, tình trạng này sẽ khiến cho đuôi dễ bị nhiễm trùng vi khuẩn. ")
    Desease.create!(pet_type: 1,
                    name: "U hạch ái toan",
                    symptom: "Lở loét ở mũi, lở loét ở môi",
                    reason: "Đôi khi nguyên nhân của những thương tổn đó có thể là do dị ứng thức ăn hay bọ chét. Tuy nhiên, những tổn thương này có thể dẫn đến việc da mèo bị nhiễm trùng vi khuẩn.",
                    treatment: "Việc điều trị sẽ phụ thuộc vào nguyên nhân gây ra bệnh.",
                    description: "U hạch ái toan")
    Desease.create!(pet_type: 1,
                    name: "U da",
                    symptom: "Xuất hiện khối u trên da.",
                    reason: "Do gen, môi",
                    treatment: "Để xác nhận một chuẩn đoán cho căn bệnh ung thư, việc sinh thiết là điều nên làm. Nếu đó chỉ là một cái u nhỏ, bác sĩ thú y sẽ khuyên bạn nên cắt bỏ nó hoàn toàn. Đối với những khối u chưa lan rộng, đây có thể là việc điều trị cần thiết duy nhất.",
                    description: "U da")
    Desease.create!(pet_type: 0,
                    name: "Bệnh Parvo",
                    symptom: "Mệt mỏi, nôn, bỏ ăn, sốt, bị tiêu chảy liên tục, phân có màu hồng, phân có máu, có bốc mùi tanh khắm, mệt mỏi lừ đừ, bị nôn liên tục, đang khỏe mạnh bỗng nhiên ủ rũ, bị mất nước, bỏ ăn hoặc ăn ít.",
                    reason: "Virus gây bệnh Parvo ở chó rất khỏe mạnh. Chúng có thể tồn tại trong môi trường ánh sáng tự nhiên tới 5 tháng, trong bóng tối tới 7 tháng hoặc hơn. Virus có thể lây truyền qua các hình thức trực tiếp và gián tiếp: Lây truyền trực tiếp từ chó ốm sang chó khỏe do tiếp xúc. Nếu tiếp xúc tần suất cao với chó ốm sẽ làm tăng tỉ lệ mắc bệnh. Phân thải chứa virus gây bệnh Parvo ở chó sẽ được côn trùng, chim chóc, hay các sinh vật gặm nhấm phát tán vào môi trường tự nhiên. Người cũng là 1 trung gian truyền bệnh do vuốt ve, ôm ấp chó cưng. Đó là lý do vì sao mà nhiều chú chó hoàn toàn không ra khỏi nhà mà vẫn bị mắc bệnh. Virus lây lan gián tiếp qua thức ăn, nước uống vào đường tiêu hóa của chó. Rồi sau đó xâm nhập vào máu để gây bệnh",
                    treatment: "Hiện nay chưa có thuốc điều trị đặc hiệu. Cách điều trị bệnh Parvo ở chó thường là nâng cao sức đề kháng cho chó. Qua đó giúp chó tạo kháng thể để tự đào thải mầm bệnh. Bệnh Parvo ở chó có thể điều trị được phần lớn là do sức sống, sức chống chọi của chó. Nhưng phần còn lại là do bác sĩ thú y. Bác sĩ sẽ đưa ra 1 phác đồ điều trị phù hợp để giúp chó có thể chống chọi với bệnh. Chỉ cần dùng sai, hoặc quá liều thuốc sẽ có thể dẫn đến tình trạng nguy hiểm cho chó. Chính vì vậy mà bạn không nên tự ý điều trị bệnh Parvo cho chó tại nhà. Parvo virus có tính hướng niêm mạc đường tiêu hóa, gây ra tiêu chảy ra máu với tần suất nhiều. Điều này làm cho nên cơ thể mất nước, mất máu, mất chất cân bằng điện giải rất nhanh. Ta tiến hành bổ sung nước, cân bằng điện giải cho chó bằng cách truyền tĩnh mạch dung dịch ringer lactate, nước muối sinh lý 0,9%, kaliclorid 10%, đường glucose 5 %.. Khi số lượng virus nhân lên đủ mạnh, đủ độc lực làm cho hệ miễn dịch cơ thể suy giảm. Từ đó các vi khuẩn gây hại đường ruột phát triển, nhân lên làm niêm mạc đường tiêu hóa càng bị tổn thương. Lúc này ta tiến hành dùng kháng sinh: ampixilin….để phòng bội nhiễm kế phát. Niêm mạc ruột bị kích ứng bởi các yếu tố gây hại nên gây ra hiện tượng nôn. Ta tiến hành cầm nôn bằng atropin sulphat và đồng thời chú ý tới việc hạ sốt cho con vật. Khi niêm mạc đường tiêu hóa bị tổn thương gây nên bong tróc niêm mạc dẫn đến chảy máu. Từ đó làm cho chó tiêu chảy ra máu hoặc phân lẫn máu. Ta tiến hành cầm máu bằng vitamin k, transami… Kết hợp song song với việc điều trị triệu chứng thì việc nâng cao sức đề kháng cho con vật quan trọng hàng đầu. Nâng cao bằng cách sử dụng các thuốc trợ sức, trợ lực: natri benzoat, cafein, catosal, vitamin….",
                    description: "Bệnh Parvo ở chó lây lan với tốc độ rất nhanh, gây chết nhiều và rất dễ bùng phát thành dịch. Bệnh Parvo hay còn được gọi là bệnh viêm ruột truyền nhiễm ở chó. Đây là 1 loại bệnh truyền nhiễm cấp tính do Canine Parvovirus (CPV) gây nên")
    Desease.create!(pet_type: 0,
                    name: "Bệnh Care",
                    symptom: "Mệt mỏi, ủ rũ, ăn ít, không ăn mà chỉ uống nước, chảy nước mũi, nước mắt, nôn mửa, không thích vận động, sốt 40 – 41,5ºC kéo dài từ 24-26h, mắt đỏ, thân nhiệt chó hạ dần, bị tiêu chảy cấp, phân có lẫn máu tươi, phân có mùi tanh khắm, gây bết ở hậu môn, đi đứng siêu vẹo, nằm 1 chỗ, bụng hóp, lông xơ xác, không mở mắt nổi do xuất hiện nhiều gèn mắt.",
                    reason: " Đường lây truyền của bệnh Care ở chó là qua dịch tiết ở cơ quan, lẫn trong cả không khí mang mầm bệnh. Do chó khỏe tiếp xúc với chó mang bệnh Care. Do chó tiếp xúc với người hoặc các động vật khác mang virus. Ngoài ra, yếu tố thời tiết và môi trường cũng là 1 trong những nguyên nhân khiến cho virus gây bệnh Care ở chó sinh sôi và phát triển mạnh mẽ. Đặc biệt là khoảng thời gian có mưa nhiều và độ ẩm cao.",
                    treatment: " Bệnh Care hiện nay chưa có thuốc đặc trị. Khi phát hiện bị nhiễm bệnh Care ở chó, bạn nên đưa chó đến ngay các cơ sở thú y để điều trị kịp thời. Do đây là 1 bệnh rất nguy hiểm nên tuyệt đối không tự chữa trị cho chó ở nhà. Nguyên lý khi điều trị bệnh Care ở chó là kịp thời bổ sung nước và các chất điện giải đã mất do ỉa chảy. Tăng cường sức đề kháng cho chó và đề phòng nhiễm trùng kế phát. Bổ sung nước và chất điện giải: Cho uống Ozeron 5%, tiếp nước muối sinh lý 0,9% hay đường Gluco 5% vào tĩnh mạch khoeo chó. Cắt nôn: dùng Atropin hay Primeran. Cầm ỉa chảy: Cho uống thuốc đặc trị tiêu chảy chó mèo (ADP), Imudium hay Bisepton 1 lần/ngày. Chống bội nhiễm: Tiêm kháng sinh như Ampicilin, Gentamycine, Streptomycine + Penicilline, Enrofloxacin.. Tăng cường sức đề kháng, trợ sức, trợ lực và cầm máu: Sử dụng các loại thuốc như Spartein, Vitamin C, Vitamin B1, Vitamin B12, Vitamin K…",
                    description: " Đây là 1 trong những loại bệnh nguy hiểm bậc nhất đối với chó. Bệnh Care hay còn gọi là bệnh sài sốt ở chó là 1 bệnh truyền nhiễm cấp tính của loài ăn thịt. Bệnh do 1 loại virus có tên là Canine Distemper Virus – CDV thuộc giống Morbillivirus, họ Paramyxoviridae gây ra. Lây lan rất mạnh với các biểu hiện như: sốt, viêm cata niêm mạc, đặc biệt là niêm mạc đường hô hấp, viêm phổi, nổi mụn ở da và có triệu chứng thần kinh. Virus gây bệnh Care có mặt ở khắp mọi nơi, nên mọi giống chó đều có nguy cơ mắc bệnh.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh Dại",
                    symptom: "Hung dữ khác thường, nước dãi nhiều, giọng sủa khàn, liệt hàm dưới, liệt chi hoặc liệt toàn thân, thích lánh vào chỗ tối.",
                    reason: "Virus dại chủ yếu lây truyền qua các vết cắn, vết liếm vào vết thương của một số động vật mắc bệnh dại. Trong một số ít trường hợp, bệnh có thể lây truyền qua đường hô hấp.",
                    treatment: "Tính tới thời điểm hiện tại chưa phương pháp hoặc thuốc điều trị nào cho chó bị bệnh dại. Cách tốt nhất là iêm vacxin phòng dại cho chó theo định kỳ hàng . Hạn chế tiếp xúc với những con vật có biểu hiện bệnh dại",
                    description: "Là một bệnh truyền nhiễm cấp tính nguy hiểm chung giữa động vật và người, gây nên những cái chết với triệu chứng rất thảm khốc. Đặc điểm của bệnh là virút tác động vào hệ thần kinh gây rối loạn thần kinh trung ương là não bộ làm cho con vật trở nên hoãng loạn (điên dại) và chết. Nguồn mang bệnh dại chủ yếu là chó (90%), mèo nuôi (5%) và động vật hoang dã.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh viêm dạ dày và ruột",
                    symptom: "Ít ăn hoặc bỏ ăn, sốt 39,5 - 40oC có kèm theo các cơn run rẩy, nôn mửa liên tục đồng thời tiêu chảy nặng, phân màu xám vàng, phân có mùi rất tanh, mắt trũng, bụng thót, da nhăn nheo, phân có màu nâu sẫm , không đi được, kiệt sức, nằm một chỗ",
                    reason: "Do giun móc (Ancylostoma caninum) : giun móc có những móc nhọn bằng kitin cắm vào vách ruột non ở phần tá tràng, không tràng để hút máu, tạo ra những tổn thương và xuất huyết trong tổ chức niêm mạc ruột. Vi khuẩn có sẵn trong niêm mạc ruột sẽ xâm nhập vào những chỗ bị tổn thương gây thành bệnh viêm ruột cấp. Do virus: Virus Parvo, Virus Carê khi xâm nhập vào hệ thống tiêu hóa của chó phát triển nhanh chóng, phá hoại niêm mạc dạ dày và ruột. Do vi khuẩn : Chó ăn uống phải thức ăn và nước uống có chứa vi khuẩn thương hàn (Salmonella), vi khuẩn yếm khí (Clostridium), vi khuẩn E.Coli... Những vi khuẩn này sẽ phát triển trong niêm mạc đường tiêu hóa gây ra bệnh viêm dạ dày và ruột cấp.",
                    treatment: "Nguyên tắc chung là chẩn đoán đúng nguyên nhân gây bệnh từ đó điều trị nguyên nhân kết hợp với điều trị triệu chứng, trợ sức và trợ tim mạch. Điều trị bằng một trong các loại kháng sinh sau: Spectylo : liều 1ml/ 3 - 5 kg thể trọng. Tylenro 5 + 5 : liều 1ml/10kg thể trọng/ngày. Kết hợp với điều trị triệu chứng và bồi dưỡng bằng các loại như : Vime C : liều 500mg/con/ngày, Vitamin B6 : liều 1ml/con/ngày,vitaral : liều 1ml/10kgP, Paravet : liều 1ml/4 kgP, Atropin : liều 2ml/10 -15 kgP, Na.campho : liều 2 - 4 ml/con/ngày. Truyền glucose 5% để cung cấp nước và chất điện giải giúp chó mau hồi phục.",
                    description: "Bệnh phổ biến xảy ra quanh năm thường thấy nhiều vào mùa hè khi thời tiết nóng và mưa ẩm ướt. Có 3 nguyên nhân có thể gây ra viêm dạ dày và ruột cấp ở chó.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh viêm phế quản",
                    symptom: "Ho, khó thở nhất là vào buổi sáng, ho khan sau trở thành ho ướt và kéo dài, thở khò khè có tiếng ran, chảy nước mắt, chảy nước mũi liên tục, sốt: 39,5 - 40,5C, mệt mỏi, bỏ ăn, có lúc ho ra đờm nhầy.",
                    reason: " - Do bị nhiễm cùng lúc nhiều laọi vi khuẩn gây bệnh đường hô hấp như: Liên cầu (streptococcus), tụ cầu (staphylococcus aureus), klebsiella pneumoniae, bordetella bronchiseptica, thường do kế phát của một số bệnh nhiễm trung như care, viêm ruột, bệnh ký sinh trùng. Do thời tiết và vệ sinh môi trường, hít phải khói bụi, hoá chất gây kích thích đường hô hấp. Do thức ăn, nước uống sắc xuống đường hô hấp.",
                    treatment: "Nguyên tắc chung: Dùng kháng sinh diệt nguyên nhân gây bệnh, thuốc chữa triệu chứng, thuốc bổ trợ. Dùng một trong các loại kháng sinh sau đây: Penicilin: tiêm bắp liều 300-500.000UI/ngày, chia 2-3 lần trong ngày. Gentamycin: Tiêm bắp liều 8-10 mg/kg thể trọng, chia 2lần trong ngày. Stretomycin: Tiêm bắp liều 20-25mg/kg thể trọng, chia 2 lần trong ngày. Hiện nay trên thị trường thuốc thú y có mọt số biệt dược sử dụng điều trị viêm phế quản ở chó: Cefa.Doc: Thành phần gồm: Cefalexine. Liodocaine HCl và dung môi. Tiêm bắp liều 1ml/5kg thể trọng. Cefadox.T: Thành phần gồm cefalextine, Doxycylin, Sulfadiazine, Trimethoprime và B. Complex. Thuôc bột hoà nước cho uống, liều 1g/5kg thể trọng. Kanacolin: Thành phần gồm Kanamycin sulfate và Ampiciline sodium. Tiêm bắp liều 1mg/5kg thể trọng. Thuốc chữa triệu chứng: Ephedrin: Thuốc giảm ho, chống khó thở. Tiêm bắp 1-2 ông x 1mg/ngày. Dimedron: Giảm ho, an thần. Tiêm bắp 1-2 ống X1ml/ngày. Thuốc trợ sức: Cafein 5%: tiêm bắp 3-6ml/con. Vitamin B1 25%, tiêm bắp 3-5ml/con. Vitamin C 5% tiêm bắp 3-5ml/con. Glucoza 30% tiêm bắp 5ml/con. Truyền huyết thanh mặn đẳng trương (trong những trường hợp chó yếu).",
                    description: "Bệnh viêm phế quả là bệnh viêm mạc đường hô hấp, viêm phế quản hay phế quản nhỏ sau đó dẫn dến khí quản , nặng hơn dẫn đến viêm phổi. Bệnh này xảy ra ở chó, khi thời tiết thay đỏi từ ấm áp sang lạnh ẩm, thường từ cuối thu sang đông và đến đầu mùa xuân.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh viêm phổi",
                    symptom: "Mệt mỏi, uể oải, bỏ ăn, sốt cao, niêm mạc đỏ, ho nhưng khó khăn, đau đớn, cơn ho khạc tăng dần lên ngày một nặng, cơn ho xảy ra nhiều vào ban đêm và sáng sớm, thở khó, con vật nằm một chỗ, yếu, cố thở nhanh và nông, miệng đỏ xẫm, sung huyết, sau tím tái.",
                    reason: "Thường do nhiễm virut đường hô hấp, sau đó là kế nhiễm vi khuẩn như các loại vi khuẩn: Pneumococcus, Streptococcus, Klebsiella, Bordesella…. Do một số loại ấu trùng của ký sinh trùng ở phế quản như Filaroides, Actustrongylus, Paragonimus cũng gây viêm phổi. Do một số nấm như Asperrgillus, Histoplasnia. Lúc đầu do tác động của virut xâm nhập qua đường hô hấp gây viêm vách phế quản nhỏ, sau lan đến nhu mô phổi hoặc có thể qua đường tuần hoàn làm cho tổ chức phổi yếu đi. Trên cơ sở đó các vi khuẩn có sẵn ở đường hô hấp sẽ phát triển và gây bệnh viêm phổi, nặng hơn gây hoại thư hoặc sinh mủ trong tổ chức phổi.",
                    treatment: "Cũng theo nguyên tắc chung. Sử dụng thuốc kháng sinh chữa nguyên nhân.Thuốc chữa triệu chứng. Thuốc trợ sức và hộ lý. Sử dụng một trong các loại kháng sinh sau đây: Penicilin G: Tiêm bắp cho chó liều 500.000 UI/ngày, cho mèo liều 200.000 UI/ngày, chia 2-3 lần trong ngày. Streptomycin: Chó 1g/ngày, mèo 500mg/ngày. Tiêm bắp, chia 2-3 lần trong ngày. Thường nên phối hợp Penicilin với streptomycin thì hiệu quả chữa bệnh viêm phổi tốt nên rất nhiều. Kanamycin: Tiêm bắp liều 40mg/kg thể trọng/ngày, chia 2-3 lần trong ngày. Erythromcycin: Tiêm bắp thịt, liều 20-25 mg/kg thể trọng/ngày. Chia 2 lần trong ngày. Erythromcycin hiệu lực cao với bệnh viêm phổi nhưng với chó, mèo có thể có tác dụng phụ như nôn mửa, rối loạn tiêu hóa, nhưng sau ít ngày sẽ hết. Theo kinh nghiệm của các nhà điều trị: Nên phối hợp kháng sinh tiêm với Trimazon (Bisepton) cho chó uống với liều 40mg/kg thể trọng/ngày. Kết quả chữa bệnh sẽ tốt hơn. Thuốc chữa triệu chứng: Giảm ho dễ thở: Ephedrin tiêm bắp 1-2 ống x 1ml/ngày. Ngày tiêm 1-2 lần. An thần, giảm sốt, giảm đau: Dimedron tiêm bắp 0,5-1 ống x 1ml/ngày. Ngày tiêm 1-2 lần. Hoặc Promix 1ml/5kg thể trọng. Thuốc trợ tim, trợ sức. Truyền Ringerlactat liều 100-150 ml/kg thể trọng/ngày. Cafein 5%: Tiêm bắp 3-5ml/con, ngày 2 lần. Vitamin B1 2,5%: Tiêm bắp 3-5ml/con, ngày 2 lần. Vitamin C 5%: Tiêm bắp 3-5ml/con, ngày 2 lần. Glucoza 30%: Tiêm tĩnh mạch, liều 5ml/con. Hộ lý: Chăm sóc và nuôi dưỡng chu đáo.",
                    description: "Bệnh viêm phổi thường là kế phát của viêm phế quản hay do bội nhiễm từ các bệnh truyền nhiễm khác như bệnh carê; viêm phế khí quản truyền nhiễm ở chó.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh viêm tử cung",
                    symptom: "Chảy dịch từ âm đạo, biếng ăn, uống nhiều nước, bụng trương to, sốt, ói mửa, tiêu chảy",
                    reason: "Do hậu quả của quá trình sinh đẻ, sót nhau, sảy thai, thai chết, máu và dịch thẩm xuất tích lại trong tử cung, âm đạo chó tạo điều kiện cho vi khuẩn từ cổ tử cung xâm nhập vào gây bệnh. Các vi khuẩn thường gặp là tụ cầu khuẩn Staphylococcus, liên cầu khuẩn Streptococcus, E. coli dung huyết và Klebsiella.",
                    treatment: "Theo nguyên tắc chung là điều trị nguyên nhân kết hợp điều trị triệu chứng, kết hợp với các thuốc bổ trợ và chăm sóc, nuôi dưỡng chu đáo nhằm tăng cường sức đề kháng của cơ thể. Thụt rửa tử cung, âm đạo bằng dung dịch Rivanol 0,1% hay thuốc tím 0,1%, mỗi ngày thụt rửa một lần, trong 3 – 5 ngày. Chống nhiễm khuẩn: sử dụng một trong các thuốc kháng sinh sau đây: Có thể dùng Penicillin, Ampicillin: tiêm bắp liều 10.000 UI/kg thể trọng/ngày, Kanamycin: tiêm bắp liều 10 mg/kg thể trọng/ngày. Điều trị liên tục trong 5 – 7 ngày. Điều trị viêm âm đạo do nhiễm khuẩn và nhiễm nấm. Sử dụng một trong các loại thuốc kháng sinh chống nhiễm khuẩn giới thiệu ở trên kết hợp với thuốc đặc trị trùng roi và nấm: Klion: hòa nước cho uống, liều 10mg/kg/ngày. Điều trị liên tục 5 – 7 ngày. Ketomycin: chó 1 – 2 g/con, mèo 0,5 – 1 g/con, hòa nước sạch hay nước cháo cho uống. Điều trị liên tục trong 5 – 7 ngày. Dearnewtab: đặt vào âm đạo 1 viên/ lần, ngày đặt 2 lần, với mèo đặt 1/2 viên/ngày. Flagystine: 1 viên/lần/ngày đặt sâu vào tử cung. Metronidazole, Nystatine, Dexamethasone: đặt sâu vào tử cung, chó 1 viên/lần/ngày, mèo 1/2 viên/lần/ngày. Cần ngâm viên thuốc vào nước khoảng 30 giây trước khi đặt. Thuốc chữa triệu chứng: cầm máu bằng vitamin K, hồi phục tổ chức niêm mạc tử cung, âm đạo: tiêm vitamin A, D, E. Chống kích ứng niêm mạc và chống co thắt tử cung, âm đạo: tiêm bắp Atropin 1% hay Primeran liều 1-2ml/con/ngày. Trợ sức, trợ lực bằng cách tiêm vitamin B1 2,5%, vitamin C 5%, B. complex. Truyền dung dịch mặn – ngọt đẳng trương 15 – 20 ml/kg thể trọng/ngày. Truyền 2 – 3 ngày.",
                    description: "Tỷ lệ phát hiện bệnh viêm tử cung giữa khám lâm sàng so với kỹ thuật siêu âm chiếm tỷ lệ khá cao là 68,74%. Bệnh viêm tử cung ở chó cái có một số biểu hiện lâm sàng đặc trưng dễ phát hiện, điều này rất có ý nghĩa đối với những cơ sở điều trị chưa được trang bị máy siêu âm. Tuy nhiên có một số chó bị viêm tử cung nhẹ chưa có biểu hiện lâm sàng đặc trưng thì khó phát hiện bằng cách khám lâm sàng. Theo nghiên cứu thì tỷ lệ mắc bệnh viêm tử cung ở nhóm chó ngoại cao hơn nhóm chó nội. Lí do có lẽ tỷ lệ bệnh cao ở nhóm chó ngoại là do những chó ngoại phần lớn có giá trị kinhh tế cao, thường được nuôi nhốt trong căn hộ, được người nuôi quan tâm nhiều hơn và dễ phát hiên bệnh.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh mò bao lông",
                    symptom: "bệnh tích rướm máu, có mủ, bị rụng lông ở mặt, rụng lông quanh mắt hay rụng lông chân trước hoặc cả chân sau, da bị mẫn đỏ lên, có mụn mủ, có máu và huyết thanh rỉ ra từ những vùng nhiễm bệnh.",
                    reason: "Chỗ ở không được vệ sinh sạch sẽ, tiếp xúc trực tiếp với các chó bị bệnh.",
                    treatment: "Ký sinh trùng: Khi bệnh khu trú có giới hạn thì thường tự khỏi, tuy nhiên để đề phòng bệnh lan ra toàn thân ta nên điều trị sớm ở những trường hợp này bằng: Amitra với nồng độ 0,025% trong nước, mỗi tuần bôi một lần, cho đến khi dứt các bệnh tích, rồi tiếp tục bôi mỗi hai tuần một lần, cho đến khi xét nghiệm không còn ký sinh trùng. Rotenone (C23H22O6) 1% pha trong cồn bôi trong ba ngày liên tục, Benzyl benzoat, Trypanbleu. Tẩm bằng các xà bông sát trùng. Trị nhiễm trùng thứ phát với : chloramphenicol, lincomycin.",
                    description: "Bệnh mò bao lông do một ký sinh trùng da sống trong nang lông gây ra ngứa ở các mức độ khác nhau. Bệnh ở chó phổ biến hơn ở mèo")
    Desease.create!(pet_type: 0,
                    name: "Bệnh ve kí sinh",
                    symptom: "Ve thường bám ở trong và ngoài vành tai vùng cổ và ở kẻ ngón chân, nhiễm nặng thì thấy ve bám khắp cơ thể, tổn thương sinh ra phản ứng viêm, ngứa ngày khó chịu, gãi thường xuyên, da xù xì, dày lên, chó hay gậm liếm cào cấu thường xuyên.",
                    reason: "Chỗ ở không được vệ sinh sạch sẽ, tiếp xúc trực tiếp với các chó bị bệnh",
                    treatment: "Các loại thuốc có thể dùng điều trị như: Frontline với các hoạt chất fipronil xịt và xoa lên lông chó, mèo, mỗi lần trừ ve được một tháng. Bayticol (flumethrin 6%) pha 1ml cho 2 lít nước tắm hay xịt cho chó. Vòng đeo cổ Preventef (diazenon) trừ được ve trong 4 tháng. Phòng Bệnh: Để kiểm soát ve ta có thể định kỳ xịt thuốc sát trùng vào chỗ ở của chó như chuồng, góc nhà, vách tường, kẻ tường, sân. Nhưng phải tách người và thú vật ra khỏi khu vực này cho đến khi thuốc hết tác dụng. Dùng vòng đeo trừ ve.",
                    description: "Ve là một loại ký sinh trên chó, nó không chỉ tranh chấp chất dinh dưỡng của ký chủ mà còn truyền một số bệnh nguy hiểm cho chó.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh rận kí sinh",
                    symptom: "Ngứa ngáy, kém ăn, chậm lớn, vết đốt gây viêm biểu bì, bao lông, rụng lông lỗ chỗ.",
                    reason: "Chỗ ở không được vệ sinh sạch sẽ, tiếp xúc trực tiếp với các chó bị bệnh",
                    treatment: "Các loại thuốc có thể dùng điều trị như: Bayticol (flumethrin 6%) pha 1ml cho 2 lít nước tắm hay xịt cho chó. Để tiêu diệt mầm bệnh ta có thể lập lại sau 14 ngày",
                    description: "Rận ký sinh ở chó phổ biến có 2 loại: Rận ăn lông và Rân hút máu. Rận ăn lông: gồm các loại như: Trichodectes canis, Trichodectes latus Heterodoxus spiniger, các loại này không hút máu chỉ ăn lông. Vòng đời chỉ trãi qua trên ký chủ, con cái đẻ trứng, màu trắng đầu có nắp dính trên lông ký chủ, 5-12 ngày nở thành ấu trùng rồi lột xác 3 lần trong 12-16 ngày để trở thành con trưởng thành. Rận hút máu: Phổ biến là Linognathus selosus, rận đẻ trứng trên lông, trứng nở ra thiếu trùng và qua 3 lần lột xác thành con trưởng thành, toàn bộ vòng đời mất 2-3 tuần.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh bọ chét kí sinh",
                    symptom: "ngứa ngáy, viêm da, mụn loét, rụng lông.",
                    reason: "Chỗ ở không được vệ sinh sạch sẽ, tiếp xúc trực tiếp với các chó bị bệnh",
                    treatment: "Các loại thuốc có thể dùng điều trị như: Dipterex 0.3-0.5 %. Bayticol (flumethrin 6%) pha 1ml cho 2 lít nước tắm hay xịt cho chó. Vòng đeo cổ Preventef (diazenon) trừ được bọ chét trong 4 tháng. Frontline với hoạt chất fipronil xịt và xoa lên lông chó trừ được bọ chét 2 tháng. Program (lufenuron) mỗi tháng một viên. Về sức khỏe cộng đồng: Trẻ em có thể nhiễm sán dây Dipylidium caninum mà nguyên nhân là do nuốt phải bọ chét mang ấu trùng sán dây.",
                    description: "Đây là một loại ký sinh trùng ngoài rất phổ biến ở chó, bọ chét không gây hại nặng trực tiếp nhưng lây lan rất nhanh và khó tiêu diệt mầm bệnh.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh giun ở mắt ",
                    symptom: "Chảy nhiều nước mắt, sợ ánh sáng, loét và đục giác mạc.",
                    reason: "Ruồi nhà Musca domestica, Fannia sp và ruồi Musca autumnalis là những ký chủ trung gian. Từ chó bệnh được ruồi ăn chất tiết của mắt có ấu trùng L1, vào cơ thể ruồi ấu trùng phát triển thành L3 và di hành đến miệng ruồi để sẵn sàng truyền cho chó khác khi ruồi đậu vào mắt. Từ đây ký sinh trùng trực tiếp phát triển thành con trưởng thành, giun có thể sống trong mắt vài ba năm, giun non có biểu bì hình răng cưa và di chuyển nhanh trong mắt ký chủ gây ra viêm kết mạc.",
                    treatment: "Có thể trị bằng các phương pháp sau. Trực tiếp lấy giun ra khỏi mắt. Nhỏ dung dịch levamisole 2% vào giác mạc. Dùng thuốc mỡ tra mắt levamisole 1%.",
                    description: "Bệnh giun ở mắt chó thường gây ra do hai loài Thelazia californiensis và T. callipaeda, chúng thường ký sinh trong túi giác mạc hay trong giác mạc của chó, giun có thể tìm thấy ký sinh ở trên mắt người. Ngoài ra bệnh có thể xảy ra ở những loài khác. Giun có lớp biểu bì hình răng cưa, dài khoảng 10-15 mm.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh viêm miệng do nấm",
                    symptom: "xuất hiện vãy trắng hay màng giả trên niêm mạc miệng hay lưỡi đôi khi lan cả đến môi, sung huyết ở xung quanh và bên ngoài thì lóet.",
                    reason: "Nguyên nhân gây bệnh là do nấm men Candida albican. Bệnh thường xảy ra ở chó, mèo non hoặc ở những con lớn tuổi. Những điều kiện khác thường là do dùng kháng sinh kéo dài, cơ thể suy giảm miễn dịch, suy nhược, làm biến đổi hệ vi khuẩn trong xoang miệng là nhnữg điều kiện cho nấm phát sinh bệnh.",
                    treatment: "Nên phân biệt với những bệnh gây viêm lóet khác. Các thuốc có thể dùng là: Ketoconazole 10 mg/kg, cho uống ngày 2 lần cho đến khi bệnh khỏi. Bôi potassium permanganate 1/3000 trong nước ngày một lần. Bôi dung dịch nystatin ngày bốn lần. Cố gắng cho chó ăn thức ăn lỏng dễ tiêu để chó dễ nuốt, và bổ sung các vitamine A, B, C trong khẩu phần.",
                    description: "Là một bệnh nhiễm trùng của xoang miệng, bệnh này không phổ biến lắm.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh ca rê",
                    symptom: "Sốt cao, ủ rũ bỏ ăn, sốt nhiều đợt, tiêu chảy có máu, viêm đường hô hấp, ho với dịch tiết mũi có mủ, có mụn mũ ở vùng da mỏng như bụng, háng, với diễn tiến lúc đầu viêm đỏ sau thành mủ rồi vỡ ra khô lại, triệu chứng thần kinh như co giật, run từng cơn, hoặc hai chân trước giật từng hồi như bơi trong không khí, bị liệt, gan bàn chân dầy và cứng, khi sờ tay vào cảm giác rất nhám, dày và cứng mũi.",
                    reason: "Bệnh do virus thuộc nhóm paramyxovirus. Virus xâm nhập vào chó qua đường hô hấp, tiêu hóa, da. Đầu tiên khi xâm nhập vào virus nhân lên ở mô bạch huyết đường hô hấp trên, sau đó nhiễm vào máu và virus tiếp tục nhân lên ở mô bạch huyết của các cơ quan khác. Mầm bệnh được thải ra qua dịch tiếït mắt mũi, nước bọt, phân, nước tiểu.",
                    treatment: "Nguyên tắc điều trị là giới hạn sự nhiễm trùng thứ phát, truyền dịch tạo lại cân bằng điện giải, giới hạn những cơn co giật và chăm sóc cẩn thận. Giữ chó bệnh ở nơi khô ấm, thuốc hạ sốt, thuốc giảm đau, atropine dể giới hạn co thắt ruột. Dùng kháng sinh hoạt phổ rộng để chống nhiễm trùng thứ phát. Trimethoprim + sulphamethoxazole. Streptomycine 5-10 mg/kg, ngày hai lần tiêm thịt hay dưới da. Gentamicin 2mg/kg ngày 2 lần dùng tối đa 5 ngày. Kanamycin 10-20 mg/kg ngày bốn lần cho uống, hoặc 5-7,5 mg/kg ngày hai lần tiêm thịt hoặc dưới da. Truyền dịch: dung dịch điện giải, dung dịch protein, và thuốc chống co giật.",
                    description: "Bệnh ca rê gây tác hại trên nhiều hệ nhưng trên hệ tiêu hóa là nặng nhất và rõ nhất. Đây là một trong những bệnh nguy hiểm và phổ biến nhất của chó. Bệnh xảy ra trên hầu khắp thế giới, giết hại rất nhiều chó không được tiêm phòng. Bệnh có thể xảy ra trên tất cả các lứa tuổi chó nhưng tác hại nặng trên chó con. Các cơ quan bị virus tấn công nhiều nhất là hệ tiêu hóa, hô hấp, da, thần kinh.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh sốt co giật Canxi ở chó mẹ nuôi con",
                    symptom: "người cứng như gỗ, hàm cứng khó thở, tấn công người và súc vật khác.",
                    reason: "Việc chó con bú rút lượng sữa quá lớn tại một thời điểm làm cho nồng độ can-xi huyết tụt dưới 8,0 mg/ml gây ra mất cân bằng can-xi ( tụt can-xi ), rối loạn hoạt động thần kinh trung ương, trung khu điều hòa thân nhiệt và hệ hô hấp, tuần hoàn và vận động. Xin lưu ý: đây không phải là bệnh thiếu can-xi như thường xảy ra với chó non dưới 6 tháng tuổi do thiếu ánh nắng và vận động ít, là bệnh mạn tính.",
                    treatment: " - Cách ly ngay với chó con. Hạ nhiệt gấp bằng tắm nước hoặc chườm nước lạnh. Mời BS Thú Y ngay, khẩn trương tiêm tĩnh mạch Canci Chloride 10% (500mg/ống 5ml). Chó < 5kg tiêm 1-2 ml. Chó 5-10kg tiêm từ 3-5 ml, chó lớn>10kg tiêm từ 5-8ml. Chú ý: Tiêm chậm vào tĩnh mạch, không tiêm bắp thịt hoặc để thuốc ra ngoài mạch gây hoại tử, thối thịt. Sau 4-6 giờ tiêm lại lần 2. Sau khi tiêm Canci Chloride chó mẹ đỡ ngay các triệu chứng, dễ chịu, có thể truyền dung dịch đường Glucose 5-10% , hoặc dung dịch truyền Lactated Ringer (nước biển)vào tĩnh mạch.",
                    description: "Sốt giật can xi rất hay xảy ra với chó mẹ sau đẻ từ 15 ngày trở ra, cũng có trường hợp bị chỉ vài ngày sau khi sinh. Nồng độ can-xi máu trung bình của chó từ 8,4-11,2 mg/ml. Do đột xuất do chó con bú quá mức, hệ thống tiết sữa cơ thể chó mẹ phải tăng tốc quá tải, lượng Can-xi trong máu bị mất cân bằng đột ngột dưới 8,0 mg/ml máu. Bệnh xảy ra nhanh, các biện pháp bổ sung can-xi trong kỳ tiết sữa cho chó mẹ đều không hiệu quả phòng bệnh.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh Lyme",
                    symptom: "Cơ thể bị cứng, thiếu linh hoạt",
                    reason: "Do bọ chét ký sinh gây nên",
                    treatment: "Điều trị là thông qua kháng sinh và mặc dù các triệu chứng thường được giải quyết trong 4 tuần, chúng có thể không phải lúc nào cũng biến mất. Giữ cho con chó của bạn tránh xa các vùng dễ bị đánh dấu và kiểm tra chó của bạn cho ve luôn luôn là những ý tưởng tốt, nhưng các loại thuốc đánh dấu ngăn ngừa là cách hiệu quả nhất để ngăn ngừa bệnh Lyme và các bệnh khác do bọ chét gây ra. Có những loại thuốc theo chủ đề để đẩy lùi và giết những con ve mà bạn đặt trực tiếp vào lông thú của bạn, như Frontline và K9 Advantix. Ngoài ra còn có thuốc viên, như NexGard , và thậm chí collars con chó của bạn có thể mặc, như Preventic . Chỉ cần ghi nhớ hiệu quả của các loại thuốc tại chỗ giảm qua tháng, đặc biệt là nếu con chó của bạn đi bơi hoặc có một bồn tắm. Phòng ngừa trong năm là tốt nhất.",
                    description: "Bệnh tật do bọ chét này là một bệnh có thể phòng ngừa cao khác. Đó là do một vi khuẩn truyền qua các con hươu hươu ăn chậm đã được gắn vào con chó trong ít nhất 18 giờ. Đó là bệnh phổ biến nhất trong số các bệnh liên quan đến đánh dấu.")
    Desease.create!(pet_type: 0,
                    name: "Ngộ độc Chocolate",
                    symptom: "Nôn mửa, tiêu chảy, nhịp thở, thở hổn hển, và lắc, nhịp tim bất thường, động kinh, cơn đau tim.",
                    reason: "Ăn sô-cô-la đen hoặc chocolate sữa",
                    treatment: "Con chó của bạn nên được nhìn thấy ngay lập tức. Đừng cố làm nôn mửa ở nhà. Hãy mang bác sĩ thú y ngay lập tức",
                    description: "Rất nhiều người đều biết rằng chó không thể ăn sô cô la. Nhưng đáng ngạc nhiên, một số lượng lớn con chó vẫn có thể nắm bắt được nó, và nó vẫn là nguyên nhân phổ biến nhất gây ngộ độc ở chó.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh viêm gan",
                    symptom: "thở gấp, sốt, sưng hạch amidan thường kết hợp với viêm họng và viêm thanh quản, ho và có âm khan trên đường hô hấp, thường thấy các nốt bạch huyết trên cổ lớn lên gây phù nề dưới da đầu và cổ, đau bụng, đốm xuất huyết và các vết bầm lan rộng dưới da, chảy máu cam và chảy máu tĩnh mạch, vàng da, chướng bụng do sự tích tụ của chất lỏng (Bao gồm huyết thanh và máu) hoặc do xuất huyết nội, ủ rũ, mất phương hướng, co giật, hôn mê hoặc hôn mê sâu, phù giác mạc và viêm màng giữa của mắt.",
                    reason: "Là bệnh lây lan rất nhanh, do virus Canine Adenovirus-1 ( CAV-1 ). Các loài chó hoang dã và chó chưa được tiêm vaccine CVA-1 đều có thể mắc bệnh, đặc biệt với chó dưới một năm tuổi. Bệnh viêm gan ở chó không lây sang người. Bệnh viêm gan truyền nhiễm trên chó gây ra bởi canine adenovirus (CAV-1). Có huyết thanh đồng nhất trên toàn thế giới, tương đồng miễn dịch với adenovirus trên người. CAV-1 có kháng nguyên khác biệt so với CAV-2 (loại được sản xuất vaccin cho bệnh hô hấp trên chó). Kháng nguyên của CAV-2 đã được phân lập từ ruột chó con bị tiêu chảy xuất huyết. Từ những chó bị ho cũi chó với dấu hiệu tiêu chảy.",
                    treatment: "Không có thuốc điều trị đặc hiệu. Chủ yếu điều trị theo triệu chứng: bù nước, cân bằng điện giải, truyền dịch đường glucose, lactated Ringer và các loại kháng sinh chống viêm nhiễm kế phát, vitamin, tăng chức năng gan thận, và chăm sóc theo chỉ định của các bác sỹ thú y. Tiêm Vacxin là cách phòng tránh bệnh tốt và hiệu quả nhất",
                    description: "Bệnh cực kỳ nghiêm hiểm vì có thể gây tử vong cho chó chỉ sau 1 vài giờ.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh ghẻ Demodex",
                    symptom: "Ghẻ toàn thân và ở bàn chân gây đau đớn dữ dội, vùng rụng lông có thể bị đóng vảy và đỏ lên.",
                    reason: "Chỗ ở không được vệ sinh sạch sẽ. Tiếp xúc trực tiếp với các chó bị bệnh",
                    treatment: "Dermaleen Nhỏ giọt. Dầu tắm 1 lần/ tháng,1 lần/ 2 tuần. Ghẻ Demodex khu trú Advocate®, Dermaleen, Catosal® Nhỏ giọt, dầu tắm, tiêm bắp hoặc tiêm dưới da 1 lần/ tháng,1 lần/ tuần, 0,5 – 5 ml/ con/ tuần. Ghẻ Demodex toàn thân Advocate®, Dermaleen, Amoxisol L.A, Catosal® 10% Nhỏ giọt, tiêm bắp hoặc tiêm dưới da 1 lần/ tuần, 1 lần/ tuần, 1 ml/ 10 kg thể trọng, lặp lại sau 48h. 0,5 – 5 ml/ con/ 3 ngày liên tục",
                    description: "Ghẻ Demodex toàn thân là dạng bệnh trầm trọng, gây ra tình trạng thú bị rụng lông toàn thân, da đóng vảy và tiết dịch, biểu hiện lờ đờ, sốt và nhiễm trùng huyết do nhiễm khuẩn thứ phát. Mụn, mụn mủ, đỏ da, tăng sắc tố mô là tổn thương kế phát của bệnh ghẻ Demodex toàn thân. Ghẻ Demodex toàn thân có thể xảy ra ở thú non hoặc thú trưởng thành. Thú trưởng thành thường ít bị mắc bệnh hơn nhưng khi mắc bệnh thì việc điều trị rất khó khăn. Để điều trị đạt hiệu quả cần kết hợp điều trị kí sinh trùng, nhiễm khuẩn kế phát và các nguyên nhân tiềm ẩn khác, đồng thời sử dụng các loại thuốc hỗ trợ tăng sức đề kháng.")
    Desease.create!(pet_type: 0,
                    name: "Bệnh giun tròn",
                    symptom: "Không thèm ăn, thiếu máu, gầy còm, chậm lớn, tiêu chảy, bụng to, ói mửa có lẫn cả giun, co giật, ấu trùng di hành qua mặt thận gan phổi não gây hoại tử các cơ quan và gây viêm phổi phù thủng và xuất huyết.",
                    reason: "Ký sinh trùng này phổ biến nhất ở những vùng đầm lầy và ẩm ướt . Ký sinh trùng hoạt tính mạnh nhất vào buổi sáng, bên ngoài cơ thể vật chủ vòng đời của giun tròn là 24h, do đó con vật có thể bị nhiễm vào bất kỳ thời điểm nào trong ngày khi vô tình ăn uống thực phẩm có ký sinh trùng này. Đặc biệt là các tháng hè khi các loài ốc sên sinh sôi nảy nở nhiều mang theo kí sinh trùng giun tròn gây bệnh. Những con chó dành nhiều thời gian chơi đùa trong nước bẩn mất vệ sinh có chứa ký sinh trùng có nguy cơ cao bị nhiễm giun. Cách duy nhất để tránh lây nhiễm là để con chó tránh nguồn nước nhiễm hoặc có thể có kí sinh trùng giun tròn",
                    treatment: "– Cần kiểm tra định kỳ ít nhất 1 tháng 1 lần đối với chó con và 3 tháng 1 lần đối với chó mèo trưởng thành. Khi phát hiện thấy nhiễm định kỳ dùng thuốc để tẩy cho chó mèo. Diệt vật chủ gậm nhấm, không cho chó tiếp xúc với cáo, chó sói và các loại thú ăn thịt. Không thả rong chó. Nuôi dưỡng chăm sóc tốt để nâng cao sức đề kháng. Sát trùng nơi nhốt chó bằng NOVADINE hoặc NOVAXIDE. Khi chó mèo hoặc các loại thú ăn thịt nhiễm giun đũa nên dùng cá loại thuốc sau của công ty ANOVA như sau: Dùng thuốc NOVA-LEVA: 1 ml/ 15 kg thể trọng. Tiêm sâu vào bắp thịt, 1 liều duy nhất. Thú non dưới 6 tháng tuổi: 2 tháng tẩy giun 1 lần. Thú trên 5 tháng tuổi: 3-4 tháng tẩy giun 1 lần. Dùng thuốc NOVA MECTIN 0,25%: Phòng bệnh: Tiêm dưới da 1ml/ 6 kg thể trọng, 2 tháng 1 lần. Trị bệnh: Tiêm dưới da 1ml/ 4 kg thể trọng, 2 tháng 1 lần. Dùng thuốc NOVA MECTIN 1%: Phòng bệnh: Tiêm dưới da 1ml/ 25 kg thể trọng, 2 tháng 1 lần. Trị bệnh: Tiêm dưới da 1ml/ 16 kg thể trọng, tuần 1 lần, trong 3 tuần. Trong thời gian điều trị cần nhốt thú nơi khô ráo, sạch sẽ, tránh phụ nhiễm. Dùng thuốc NOVA-LEVASOL: 1g/ 8 kg thể trọng. Trộn đều thuốc vào 1 ít thức ăn hoặc pha vào một ít nước uống. Thú non: Mỗi 2 tháng xổ 1 lần. Thú lớn: Mỗi 6 tháng xổ 1 lần.",
                    description: "Ký sinh trùng giun tròn bắt đầu một chu kì bằng việc giao phối và sản sinh trứng trong ruột sau đó trứng theo phân ra ngoài truyền lây cho động vật khác. Một khi trứng đã rời khỏi cơ thể chúng sẽ bám vào các cây thủy sinh trong nước và tìm một cơ thể vật chủ (thường là ốc sên) nơi nó tự tái sinh vô tính thành nhiều bào tử tạo thành dạng ấu trùng giống như túi. Các ấu trùng này đi qua đường máu vào ruột sinh sôi nảy nở thành sán đực và sán cái sinh sản tiếp tục và di chuyển đến các cơ quan bên trong cơ thể để gây bệnh.")

puts "8. Seeding Service"
  Service.create!(name: "Tiêm phòng vaccin tổng hợp", price: 300000)
  Service.create!(name: "Tiêm phòng vaccin 5b", price: 150000)
  Service.create!(name: "Tiêm phòng vaccin 7b", price: 250000)
  Service.create!(name: "Cắt tỉa - Tạo kiểu", price: 50000)
  Service.create!(name: "Cắt tỉa - Tạo kiểu", price: 50000)
  Service.create!(name: "Tắm - mát xa", price: 10000)
  Service.create!(name: "Sấy khô toàn thân", price: 10000)
  Service.create!(name: "Chụp X ", price: 50000)
  Service.create!(name: "Siêu âm", price: 50000)
  Service.create!(name: "Nhuộm lông", price: 80000)
  Service.create!(name: "Nhuộm lông", price: 100000)
  Service.create!(name: "Xét nghiệm", price: 50000)
  Service.create!(name: "Cấp cứu 24/7", price: 200000)
  Service.create!(name: "Phẫu thuật", price: 200000)
  Service.create!(name: "Vệ sinh miệng", price: 20000)
  Service.create!(name: "Ở nội trú / ngày", price: 50000)
  Service.create!(name: "Mổ đẻ chó mèo", price: 1500000)
  Service.create!(name: "Cắt tai cho chó mèo", price: 700000)
  Service.create!(name: "Cắt đuôi cho chó mèo", price: 600000)
  Service.create!(name: "Gel Virbac Megaderm giúp mượt da lông và giảm ngứa chó mèo", price: 10000)
  Service.create!(name: "Thuốc bột trị ho viêm phổi cho chó mèo Bio amcoli", price: 30000)
  Service.create!(name: "Kháng sinh phòng trị bệnh chó mèo Doxy-Sul-Trep", price: 35000)
  Service.create!(name: "Thuốc tiêm chó mèo bỏ ăn tiêu chảy - Bio Linco S 20ml", price: 60000)
  Service.create!(name: "Thuốc trị tiêu chảy trên chó mèo Hanvet Vitamycin", price: 25000)
  Service.create!(name: "Thuốc trị ghẻ THIVAMIDIN", price: 15000)
  Service.create!(name: "Men phòng và trị tiêu chảy cho chó mèo Genyo - Clostop 20g", price: 30000)
  Service.create!(name: "Thuốc bổ sung Vitamin B cho chó mèo Kissbaby", price: 140000)
  Service.create!(name: "Thuốc bổ sung vitamin và tăng đề kháng chó mèo Bio-Vit Plus", price: 30000)
  Service.create!(name: "Thuốc trị viêm mắt, ngứa mắt cho chó mèo Bio Gentadrop 10ml", price: 10000)
  Service.create!(name: "Thức ăn bổ sung cho chó mèo tăng sức kháng bệnh BOGO 500gam", price: 40000)
  Service.create!(name: "Thuốc bổ tiêm cho chó mèo thèm ăn tăng sức đề kháng - Bio Bcomplex C 20ml", price: 40000)
  Service.create!(name: "Thuốc bột trị tiêu chảy ói mửa cho chó mèo Gentatylo", price: 30000)
  Service.create!(name: "Sữa Cho Chó Mèo Bio 100g", price: 30000)
  Service.create!(name: "Thuốc tiêm cho chó mèo sốt bỏ ăn không rõ nguyên nhân - Florodxy 20ml", price: 65000)
  Service.create!(name: "Thuốc Diệt Ve Bọ Chét Cho Chó Mèo An Toàn HOUSETOX", price: 180000)
  Service.create!(name: "Thuốc Xịt trị xà mâu ghẻ - Viêm da chó mèo - Ecotraz 250", price: 65000)
  Service.create!(name: "Thuốc trị tiêu chảy, rối loạn tiêu hóa chó mèo", price: 35000)
  Service.create!(name: "Thuốc tiêm giảm ho long đờm cho chó mèo Bio Bromhexine 100ml", price: 45000)
  Service.create!(name: "Dung dịch sát trùng, đặc trị ghẻ, lở trên chó mèo Asi-POVIDINE 10ml", price: 30000)
  Service.create!(name: "Thuốc trị nấm ALKIN FUNGIKUR", price: 130000)
  Service.create!(name: "Thuốc dinh dưỡng cho chó mèo Bayer Catosal 10% 100ml", price: 300000)
  Service.create!(name: "Thuốc xổ giun sán cho chó mèo sanpet", price: 30000)
  Service.create!(name: "Thuốc Tẩy Giun Chó Mèo Biaverm", price: 240000)
  Service.create!(name: "Thuốc trị viêm phổi và ký sinh trùng đường máu cho chó mèo - Doxytab", price: 65000)
  Service.create!(name: "Thuốc tẩy giun sán chó mèo BIAVERM", price: 15000)
  Service.create!(name: "Thuốc tiêm trị tiêu chảy viêm phổi cho chó mèo - Bio Codexine 20ml", price: 75000)
  Service.create!(name: "Thuốc xổ lãi cho chó mèo - Oliver Fenbensol gói 10g", price: 15000)
  Service.create!(name: "Thuốc Nhỏ Trị Ve- Bọ Chét Cho Chó- Mèo", price: 10000)
  Service.create!(name: "Thuốc tiêm triệt sản chó mèo - Depo 3ml", price: 105000)
  Service.create!(name: "Thuốc Bột Đặc Trị Ói Mửa, Tiêu Chảy Cho Chó Mèo Bio-Scour 5g", price: 10000)


puts "9. Seeding Pet"
User.where(role: :member).each do |user|
    Pet.create!(user_id: user.id, name: "Nana", image: "", gender: "cái", type_pet: "chó", dob: "25/3/2018")
    Pet.create!(user_id: user.id, name: "Mini", image: "", gender: "đực", type_pet: "mèo", dob: "12/8/2017")
    Pet.create!(user_id: user.id, name: "Milu", image: "", gender: "cái", type_pet: "chó", dob: "19/11/2016")
    Pet.create!(user_id: user.id, name: "Vàng", image: "", gender: "đực", type_pet: "mèo", dob: "25/5/2017")
    Pet.create!(user_id: user.id, name: "Đậu", image: "", gender: "cái", type_pet: "chó", dob: "5/8/2018")
end
