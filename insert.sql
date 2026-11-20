ROLLBACK;

BEGIN;

TRUNCATE TABLE 
    public.visit_medications,
    public.sale_items,
    public.visits,
    public.sales,
    public.pets,
    public.products,
    public.veterinarians,
    public.pet_owners 
RESTART IDENTITY CASCADE;

INSERT INTO public.pet_owners (first_name, last_name, phone_number, email, address) VALUES
('Nərgiz', 'Qasımova', '+994502112233', 'nergiz.qasimova@gmail.com', 'Bakı ş., Binəqədi r.'),
('Anar', 'Rzayev', '+994505678901', 'anar.rzayev@inbox.ru', 'Sumqayıt ş., 5-ci mkr.'),
('Aysel', 'Kərimova', '+994555678912', 'aysel.kerimova@gmail.com', 'Bakı ş., Səbail r.'),
('Murad', 'Həsənov', '+994707890123', 'murad.hasanov@mail.ru', 'Bakı ş., Nərimanov r.'),
('Günel', 'İbrahimova', '+994518901234', 'gunel.ibrahimova@gmail.com', 'Gəncə ş., Atatürk pr.'),
('Orxan', 'Quliyev', '+994509012345', 'orxan.quliyev@outlook.com', 'Bakı ş., Suraxanı r.'),
('Fidan', 'Süleymanova', '+994551112233', 'fidan.suleymanova@gmail.com', 'Xırdalan ş., Qalubiyyə k.'),
('Kamran', 'Əliyev', '+994702223344', 'kamran.aliyev@gmail.com', 'Bakı ş., Yasamal r.'),
('Ləman', 'Məmmədova', '+994503334455', 'leman.mammadova@yahoo.com', 'Bakı ş., Xətai r.'),
('Tural', 'Babayev', '+994554445566', 'tural.babayev@gmail.com', 'Sumqayıt ş., 10-cu mkr.');


INSERT INTO public.veterinarians (first_name, last_name, specialization, phone_number, license_number) VALUES
('Rəşad', 'Məmmədov', 'Cərrah', '+994506001122', 'VET-AZ-1001'),
('Səbinə', 'Əliyeva', 'Terapevt', '+994556002233', 'VET-AZ-1002'),
('Elvin', 'Hüseynov', 'Dermatoloq', '+994706003344', 'VET-AZ-1003'),
('Aynur', 'Vəliyeva', 'Oftalmoloq', '+994506004455', 'VET-AZ-1004'),
('Cavid', 'Nəsirov', 'Stomatoloq', '+994556005566', 'VET-AZ-1005'),
('Zəhra', 'Quliyeva', 'Kardioloq', '+994706006677', 'VET-AZ-1006'),
('Emin', 'Sadıqov', 'Ortoped', '+994506007788', 'VET-AZ-1007'),
('Nigar', 'Rəhimova', 'Ekzotik heyvanlar üzrə mütəxəssis', '+994556008899', 'VET-AZ-1008'),
('Fərid', 'Kərimov', 'Reanimatoloq', '+994706009900', 'VET-AZ-1009'),
('Türkan', 'Həsənli', 'Terapevt', '+994506001010', 'VET-AZ-1010');


INSERT INTO public.products (name, category, unit_price, stock_quantity, prescription_required, barcode) VALUES
('Royal Canin Adult Dog 2kg', 'Yem', 38.50, 45, false, '460100010001'),
('Whiskas Toyuqlu Yaş Yem 85g', 'Yem', 1.80, 150, false, '460100010002'),
('Bravecto İtlər üçün Parazit Əleyhinə', 'Dərman', 65.00, 20, true, '460100010003'),
('Drontal Pişiklər üçün Qurd Dərmanı', 'Dərman', 12.50, 60, true, '460100010004'),
('Beaphar Vitamin Kompleksi', 'Dərman', 22.00, 35, false, '460100010005'),
('Nobivac Rabies Peyvəndi', 'Peyvənd', 28.00, 30, true, '460100010006'),
('Trixie Pişik Qumu 5L', 'QulluqVasitəsi', 14.00, 50, false, '460100010007'),
('Amoksiklav Vet 250mg', 'Dərman', 18.40, 25, true, '460100010008'),
('Ferplast İt Xaltası M', 'Aksesuar', 19.50, 40, false, '460100010009'),
('Oticur Qulaq Damcısı', 'Dərman', 16.00, 28, true, '460100010010');


INSERT INTO public.pets (owner_id, name, species, breed, gender, birth_date, microchip_number) VALUES
(1, 'Barsik', 'Pişik', 'Britaniya qısatüklü', 'Erkək', '2022-04-15', 'MC-9001001'),
(2, 'Reks', 'İt', 'Alman çoban iti', 'Erkək', '2021-08-20', 'MC-9001002'),
(3, 'Məstan', 'Pişik', 'Şotland sallaqqulaq', 'Dişi', '2023-01-10', 'MC-9001003'),
(4, 'Maks', 'İt', 'Golden Retriever', 'Erkək', '2020-11-05', 'MC-9001004'),
(5, 'Luna', 'Pişik', 'Siam', 'Dişi', '2023-06-18', 'MC-9001005'),
(6, 'Cek', 'İt', 'Haski', 'Erkək', '2021-02-28', 'MC-9001006'),
(7, 'Kiki', 'Quş', 'Dalğalı tutuquşu', 'Dişi', '2024-03-12', 'MC-9001007'),
(8, 'Rokki', 'İt', 'Pudel', 'Erkək', '2022-09-09', 'MC-9001008'),
(9, 'Simba', 'Pişik', 'Meyn-kun', 'Erkək', '2021-12-01', 'MC-9001009'),
(10, 'Boni', 'Dovşan', 'Karlik dovşan', 'Dişi', '2024-05-22', 'MC-9001010');


INSERT INTO public.visits (pet_id, vet_id, visit_date, reason, diagnosis, notes) VALUES
(1, 2, '2026-10-01 10:30:00', 'İllik müayinə və peyvənd', 'Sağlam', 'Quduzluq əleyhinə peyvənd vuruldu'),
(2, 1, '2026-10-02 12:00:00', 'Pəncədə axsaqlıq', 'Yüngül əzələ dartılması', '5 gün istirahət tövsiyə olunur'),
(3, 3, '2026-10-03 14:15:00', 'Tük tökülməsi və qaşınma', 'Allergik dermatit', 'Qida rasionu dəyişdirilməlidir'),
(4, 5, '2026-10-05 11:00:00', 'Diş daşlarının təmizlənməsi', 'Gingivit başlanğıcı', 'Ultrasəs ilə təmizləndi'),
(5, 2, '2026-10-07 16:45:00', 'İştahasızlıq', 'Mədə pozğunluğu', 'Pəhriz yeməyi yazıldı'),
(6, 7, '2026-10-10 09:30:00', 'Oynaq ağrısı', 'Artrit', 'Vitamin və fizioterapiya'),
(7, 8, '2026-10-12 15:00:00', 'Dimdik və caynaq baxımı', 'Normal', 'Vitamin əlavəsi verildi'),
(8, 4, '2026-10-15 13:20:00', 'Göz yaşarması', 'Konyunktivit', 'Göz damcısı təyin edildi'),
(9, 6, '2026-10-18 10:00:00', 'Nəfəs darlığı', 'Ürək ritm pozğunluğu', 'EKQ çəkildi, nəzarətdədir'),
(10, 8, '2026-10-20 17:10:00', 'Qulaq qaşınması', 'Otitis (Qulaq iltihabı)', 'Qulaq damcısı təyin edildi');


INSERT INTO public.sales (owner_id, sale_date, total_amount, payment_method) VALUES
(1, '2026-10-01 11:00:00', 40.50, 'Kart'),
(2, '2026-10-02 12:30:00', 103.50, 'Nağd'),
(3, '2026-10-03 14:45:00', 36.00, 'Kart'),
(4, '2026-10-05 11:30:00', 58.00, 'Nağd'),
(5, '2026-10-07 17:10:00', 21.60, 'Kart'),
(6, '2026-10-10 10:00:00', 44.00, 'Nağd'),
(7, '2026-10-12 15:20:00', 22.00, 'Kart'),
(8, '2026-10-15 13:50:00', 37.90, 'Nağd'),
(9, '2026-10-18 10:40:00', 56.00, 'Kart'),
(10, '2026-10-20 17:30:00', 30.00, 'Nağd');


INSERT INTO public.sale_items (sale_id, product_id, quantity, unit_price) VALUES
(1, 4, 1, 12.50),
(1, 6, 1, 28.00),
(2, 1, 1, 38.50),
(2, 3, 1, 65.00),
(3, 5, 1, 22.00),
(3, 7, 1, 14.00),
(4, 1, 1, 38.50),
(4, 9, 1, 19.50),
(5, 2, 12, 1.80),
(6, 5, 2, 22.00);


INSERT INTO public.visit_medications (visit_id, product_id, quantity_used, dosage_instructions) VALUES
(1, 6, 1.00, 'Dərialtı 1 doza birdəfəlik'),
(2, 5, 1.00, 'Gündə 1 tablet yeməklə'),
(3, 3, 1.00, '1 tablet 3 aydan bir'),
(4, 8, 1.00, 'Gündə 2 dəfə 0.5 tablet, 5 gün'),
(5, 4, 1.00, 'Birdəfəlik acqarına'),
(6, 5, 2.00, 'Səhər-axşam 1 tablet, 14 gün'),
(7, 5, 0.50, 'Suyuna 5 damcı əlavə edilməli'),
(8, 8, 1.00, 'Gündə 2 dəfə 7 gün müddətində'),
(9, 8, 1.00, 'Həkim nəzarəti ilə gündə 1 dəfə'),
(10, 10, 1.00, 'Hər qulağa 3 damcı, gündə 2 dəfə');

COMMIT;