import Just
extension BoatsSwift {
	public func getUser(userid: String) -> Any {
		var obj = Just.get("https://discord.boats/api/user/\(userid)")
		return obj
	}
}
