sudah_ambil('Dasar-dasar Pemrograman 1').
sudah_ambil('Matematika Diskret 1').
sudah_ambil('MPK Agama Islam').
sudah_ambil('MPK Bahasa Inggris').
sudah_ambil('MPK Seni & Olahraga').
sudah_ambil('MPK Terintegrasi B').
sudah_ambil('Dasar-dasar Pemrograman 2').
sudah_ambil('Matematika Diskret 2').
sudah_ambil('Matematika Dasar 1').
sudah_ambil('MPK Terintegrasi A').
sudah_ambil('Pengantar Sistem Dijital').
sudah_ambil('Aljabar Linier').
sudah_ambil('Fisika Dasar').
sudah_ambil('Matematika Dasar 2').
sudah_ambil('Pengantar Organisasi Komputer').
sudah_ambil('Perancangan & Pemrograman Web').
sudah_ambil('Struktur Data & Algoritma').

bisa_ambil('MPK Terintegrasi B').
bisa_ambil('MPK Terintegrasi A').
bisa_ambil('Fisika Dasar').
bisa_ambil('Matematika Diskret 1').
bisa_ambil('MPK Seni & Olahraga').
bisa_ambil('Dasar-dasar Pemrograman 1').
bisa_ambil('MPK Agama Islam').
bisa_ambil('MPK Bahasa Inggris').
bisa_ambil('Matematika Dasar 1').
bisa_ambil('Pengantar Sistem Dijital').
bisa_ambil('Matematika Diskret 2').
bisa_ambil('Dasar-dasar Pemrograman 2') :- sudah_ambil('Dasar-dasar Pemrograman 1').
bisa_ambil('Pengantar Organisasi Komputer') :- sudah_ambil('Pengantar Sistem Dijital').
bisa_ambil('Aljabar Linier') :- sudah_ambil('Matematika Dasar 1').
bisa_ambil('Perancangan & Pemrograman Web') :- sudah_ambil('Dasar-dasar Pemrograman 1').
bisa_ambil('Struktur Data & Algoritma') :- sudah_ambil('Dasar-dasar Pemrograman 2').
bisa_ambil('Matematika Dasar 2') :- sudah_ambil('Matematika Dasar 1').
bisa_ambil('Aljabar Linier') :- sudah_ambil('Matematika Dasar 1').
bisa_ambil('Basis Data') :- sudah_ambil('Dasar-dasar Pemrograman 2').
bisa_ambil('Statistika & Probabilitas') :- sudah_ambil('Matematika Diskret 1'),sudah_ambil('Matematika Dasar 1').
bisa_ambil('Sistem Operasi') :- sudah_ambil('Pengantar Organisasi Komputer').
bisa_ambil('Pemrograman Lanjut') :- sudah_ambil('Perancangan & Pemrograman Web'), sudah_ambil('Dasar-dasar Pemrograman 2').
bisa_ambil('Teori Bahasa & Automata') :- sudah_ambil('Matematika Diskret 2'), sudah_ambil('Matematika Diskret 1').
bisa_ambil('Rekayasa Perangkat Lunak') :- sudah_ambil('Dasar-dasar Pemrograman 2').
bisa_ambil('Pemrograman Sistem') :- sudah_ambil('Sistem Operasi'), sudah_ambil('Struktur Data & Algoritma').
bisa_ambil('Sistem Cerdas') :- sudah_ambil('Statistika & Probabilitas'), sudah_ambil('Matematika Diskret 1'), sudah_ambil('Struktur Data & Algoritma').
bisa_ambil('Jaringan Komputer') :- sudah_ambil('Sistem Operasi'),sudah_ambil('Dasar-dasar Pemrograman 1').
bisa_ambil('Metodologi Penilitian & Penulisan Ilmiah') :- sudah_ambil('MPK Terintegrasi A'), sudah_ambil('MPK Terintegrasi B').
bisa_ambil('Proyek Perangkat Lunak') :- sudah_ambil('Rekayasa Perangkat Lunak'),sudah_ambil('Basis Data').
bisa_ambil('Analisis Numerik') :- sudah_ambil('Matematika Dasar 2'),sudah_ambil('Aljabar Linier').
bisa_ambil('Sains Data') :- sudah_ambil('Statistika & Probabilitas'), sudah_ambil('Basis Data').
bisa_ambil('Desain & Analisis Algoritma') :- sudah_ambil('Struktur Data & Algoritma').

generate_matkul(X) :- bisa_ambil(X),\+ sudah_ambil(X).