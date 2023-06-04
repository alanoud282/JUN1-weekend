//
//  RealSearch.swift
//  GoogleChrome
//
//  Created by ساره المرشد on 04/06/2023.
//


import SwiftUI


struct SearchResults: Decodable {
    let items: [SearchResult]
}

struct SearchResult: Decodable, Identifiable {
    let id = UUID()
    let title: String
    let link: String
}

class GoogleSearchService {
    let apiKey: String
    let searchEngineId: String
    
    init(apiKey: String, searchEngineId: String) {
        self.apiKey = apiKey
        self.searchEngineId = searchEngineId
    }
    
    func search(query: String, completion: @escaping (Result<[SearchResult], Error>) -> Void) {
        let urlString = "https://www.googleapis.com/customsearch/v1?key=\(apiKey)&cx=\(searchEngineId)&q=\(query)"
        let url = URL(string: urlString)!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "com.example.GoogleSearch", code: 1, userInfo: [NSLocalizedDescriptionKey: "No data returned"])))
                return
            }
            
            do {
                let results = try JSONDecoder().decode(SearchResults.self, from: data)
                completion(.success(results.items))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}

struct RealSearch: View {
    @State private var searchText = ""
    @State private var searchResults: [SearchResult] = []

    let searchService = GoogleSearchService(apiKey: "AIzaSyDWBayY8zc5TowW2zt0HJZP7pEPKYuR_ms", searchEngineId: "d33dc1fb420894c31")
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search", text: $searchText, onCommit: performSearch)
                List {
                    ForEach(searchResults) { result in
                        VStack(alignment: .leading) {
                            Text(result.title)
                                .font(.headline)
                            Text(result.link)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
            //.navigationTitle("Search")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
        }
    }

    func performSearch() {
        searchService.search(query: searchText) { result in
            switch result {
            case .success(let results):
                DispatchQueue.main.async {
                    searchResults = results
                }
            case .failure(let error):
                print("Error searching: \(error.localizedDescription)")
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        searchResults.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        searchResults.move(fromOffsets: source, toOffset: destination)
    }
}

struct RealSearch_Previews: PreviewProvider {
    static var previews: some View {
        RealSearch()
    }
}
