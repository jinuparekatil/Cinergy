//
//  AppEndPoints.swift
//  Cinergy
//
//  Created by Jinu on 19/01/2024.
//

import Foundation

enum AppEndPoints  {
    case guestToken
    case login
    case escapeRoomMovies
    case getMovieInfo
}

extension AppEndPoints {
    var path: String {
        switch self {
        case .guestToken:
            return "/guestToken"
        case .login:
            return "/login"
        case .escapeRoomMovies:
            return "/escapeRoomMovies"
        case .getMovieInfo:
            return "/getMovieInfo"
        }
    }
}
