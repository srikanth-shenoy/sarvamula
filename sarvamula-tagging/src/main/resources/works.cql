// ---------------------- WORK TYPES --------------------//
CREATE (ind:WorkType {
					uid: '491f02d0-fded-4001-bbcb-2a1d12a8ad13',
					name: 'स्वतन्त्र कृतिः', nameTransliterated: 'svatantra kRutiH', nameEng: 'Independent work'
})
CREATE (bhashya:WorkType {
					uid: '5316668c-1b68-41ad-84cd-5e93d0cbf2cb',
					name: 'भाष्य', nameTransliterated: 'bhAShya', nameEng: 'Full Commentary'
})
CREATE (teeka:WorkType {
					uid: '254b0755-657c-4fb2-946d-9a402fa94aca',
					name: 'टीका', nameTransliterated: 'TIkA', nameEng: 'Detailed  Commentary)'
})
CREATE (vyakhyana:WorkType {
					uid: 'bbd9d7a5-8a9e-419b-9593-27e9e2e7ffac',
					name: 'व्याख्यान', nameTransliterated: 'vyAkhyAna', nameEng: 'Detailed Commentary for full or selected portions'
})
CREATE (tippani:WorkType {
					uid: 'fcdb260b-23af-4be9-bfe9-4429b4dc62c6',
					name: 'टिप्पणी', nameTransliterated: 'TippaNi', nameEng: 'Glosses'
})


// ---------------------- WORK CATEGORIES --------------------//
CREATE (gita:WorkCategory {
					uid: 'c466125a-5853-41c1-81e3-ced2018913e1',
					name: 'गीता-प्रस्थानम्', nameTransliterated: 'gItA prasthAnaM', nameEng: 'Gita Prasthaana'
})

CREATE (sutra:WorkCategory {
					uid: 'b6eef8b2-806d-4478-9162-0fa396ad49c5',
					name: 'सूत्र-प्रस्थानम्', nameTransliterated: 'sutra prasthAnaM', nameEng: 'Sutra Prasthaana'
})

CREATE (upanishat:WorkCategory {
					uid: '86805fe9-6128-4743-a2a3-cd5934090b81',
					name: 'उपनिषत्-प्रस्थानम्', nameTransliterated: 'upanishat prasthAnaM', nameEng: 'Upanishat Prasthaana'
})

CREATE (shruthi:WorkCategory {
					uid: '812902fe-5db0-442c-aa05-58ac3c61c44f',
					name: 'श्रुति-प्रस्थानम्', nameTransliterated: 'shruthi prasthAnaM', nameEng: 'Shruti Prasthaana'
})

CREATE (ithihasapurana:WorkCategory {
					uid: 'e58dcae0-ce7a-4e57-bdaf-7a7884a1578d',
					name: 'इतिहास-पुराण-प्रस्थानम्', nameTransliterated: 'itihAsa purANa prasthAnaM', nameEng: 'Itihasa Purana Prasthaana'
})

CREATE (prakarana:WorkCategory {
					uid: 'fd662430-1837-4d49-b5b5-fab517269035',
					name: 'प्रकरण-ग्रन्थः', nameTransliterated: 'prakaraNa granthah', nameEng: 'Prakarana Grantha'
})

CREATE (achara:WorkCategory {
					uid: '332fc9d9-e0d0-4249-9b9a-c2fc58766973',
					name: 'आचार-ग्रन्थः', nameTransliterated: 'AchAra granthaH', nameEng: 'Achara Grantha'
})

CREATE (stotra:WorkCategory {
					uid: '1e74d65e-c772-4c79-a701-9170e593e316',
					name: 'स्तोत्र-कृतिः', nameTransliterated: 'stOtra kRutiH', nameEng: 'Strotra Kruti'
})


// ---------------------- AUTHORS --------------------//
CREATE (vv:Person {uid: '39f85def-56b3-4882-9dc3-8befb99863dd', name: 'श्री वेदव्यास', nameEng : 'Vedavyasa'})

CREATE (m:Person {uid: 'e783dcdd-68e4-4913-a5f4-108c09422176', name: 'श्रीमन्मध्वाचार्य', nameEng : 'Madhvacharya'})


// ---------------------- VEDAVYASA WORKS --------------------//


CREATE (bs:Work {
					uid: 'bb24bb37-a447-4d29-8825-c616f051d11d', 
					title: 'ब्रह्मसूत्र',  titleTransliterated: 'brahmasUtra', titleEng: 'Brahmasutra', 
					desc: '564 Brahmasutras'
})
CREATE (bs)-[:WORK_TYPE]->(ind)
CREATE (vv)-[:WROTE]->(bs)


// ---------------------- MADHVACHARYA WORKS --------------------//

//each work HAS many SubjectCategory - one or more primary and one or more secondary with weightage  1 to 10 and also belong to savakasha niravakasha etc.. These Categories have to be identified in advance as much as possible with option to add more categories
//each shloka will also have same
//work subject categorization is for later. 
//for now focus of tagging is shloka categorization

//sutra prasthaana
CREATE (bsb:Work {
					uid: '8d84cd58-67cc-466f-8d73-aeb960b997c3', 
					title: 'ब्रह्मसूत्र-भाष्यम्',  titleTransliterated: 'brahmasUtra bhAShyaM', titleEng: 'Brahmasutra Bhashyam', 
					shortDescription: 'Holistic commentary on entire Brahmasutra',
					longDescription: '',
					workSummary: ''
})
CREATE (bsb)-[:WORK_TYPE]->(bhashya)
CREATE (bsb)-[:COMMENTARY_ON]->(bs)
CREATE (bsb)-[:WORK_CATEGORY]->(sutra)
CREATE (m)-[:WROTE]->(bsb)

CREATE (bsbChapter1:WorkSection { 
					uid:'f8dc9091-cc4b-41ee-bb0f-7e8a18619ee8', num: '1', 
					name: 'अध्याय', nameTransliterated: 'adhyAya', nameEng: 'Chapter'
})
CREATE (bsbChapter2:WorkSection { 
					uid:'7df6c1f5-5536-4a4c-a1dd-dc01157b3369', num: '2', 
					name: 'अध्याय', nameTransliterated: 'adhyAya', nameEng: 'Chapter'
})
CREATE (bsbChapter3:WorkSection { 
					uid:'9e9c0df0-4861-46af-9f02-5dbab43f55b9', num: '3', 
					name: 'अध्याय', nameTransliterated: 'adhyAya', nameEng: 'Chapter'
})
CREATE (bsbChapter4:WorkSection { 
					uid:'b5d1a74d-1903-4b55-bcd8-c0bbebe4f985', num: '4', 
					name: 'अध्याय', nameTransliterated: 'adhyAya', nameEng: 'Chapter'
})
CREATE (bsb)-[:HAS_SECTIONS]->(bsbChapter1)
CREATE (bsb)-[:HAS_SECTIONS]->(bsbChapter2)
CREATE (bsb)-[:HAS_SECTIONS]->(bsbChapter3)
CREATE (bsb)-[:HAS_SECTIONS]->(bsbChapter4)

 
CREATE (ab:Work {
					uid: '67090b39-8b31-4a9e-b836-bcadf60361d2', 
					title: 'अणुभाष्य', titleTransliterated: 'aNubhAShya', titleEng: 'AnuBhashya', 
					shortDescription: 'Compact commentary on Brahmasutra',
					longDescription: '',
					workSummary: ''
})
CREATE (ab)-[:WORK_TYPE]->(bhashya)
CREATE (ab)-[:COMMENTARY_ON]->(bs)
CREATE (ab)-[:WORK_CATEGORY]->(sutra)
CREATE (m)-[:WROTE]->(ab)

CREATE (av:Work {
					uid: '442c5d80-9bc9-40e0-bcdb-86616a33ea6d', 
					title: 'अनुव्याख्यानम्', titleTransliterated: 'anuvyAkhyAnaM', titleEng: 'Anuvyaakhyaana', 
					shortDescription: 'Dialectic work on Brahmasutra',
					longDescription: '',
					workSummary: ''
})
CREATE (av)-[:WORK_TYPE]->(vyakhyana)
CREATE (av)-[:COMMENTARY_ON]->(bs)
CREATE (av)-[:WORK_CATEGORY]->(sutra)
CREATE (m)-[:WROTE]->(av)

CREATE (nv:Work {
					uid: '4d499630-0085-4e9f-b0aa-8d054e6fa135', 
					title: 'न्ययविवरणम्', titleTransliterated: 'nyAya vivaraNaM', titleEng: 'Nyaya Vivarana', 
					shortDescription: 'Work on Brahmasutra from Nyaya perspective',
					longDescription: '',
					workSummary: ''
})
CREATE (nv)-[:WORK_TYPE]->(teeka)
CREATE (nv)-[:COMMENTARY_ON]->(bs)
CREATE (nv)-[:WORK_CATEGORY]->(sutra)
CREATE (m)-[:WROTE]->(nv)


// gita prasthaana




//upanishat prasthana




//shruthi prasthaana


//itihasa purana prasthAna



// prakarana grantha

CREATE (mk:Work {
					uid: '9e53bd86-36eb-4291-9df9-f73cb1c61f0f', 
					title: 'मायावाद-खण्डनम्', titleTransliterated: 'mAyAvAda khanDanaM', titleEng: 'Mayavada Khandanam', 
					shortDescription: 'Dialectic work on refutation of Mayavada',
					longDescription: '',
					workSummary: ''
})
CREATE (mk)-[:WORK_TYPE]->(ind)
CREATE (mk)-[:WORK_CATEGORY]->(prakarana)
CREATE (m)-[:WROTE]->(mk)


// Achara Grantha


//Stotras
