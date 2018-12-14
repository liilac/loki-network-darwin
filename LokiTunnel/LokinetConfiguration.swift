//
//  LokinetConfig.swift
//  LokinetPacketTunnelProvider
//
//  Created by Lilac on 12/12/18.
//  Copyright © 2018 Loki Project. All rights reserved.
//

import Foundation

/*
 * Note regarding the following:
 *
 * The configuration here has been modelled according to the lokinet INI configuration file format, with
 * some minimal changes in line with more appropriate modelling in Swift.
 * This is not necessarily ideal or idiomatic, and this model should be reviewed considering how best
 * to model the configuration in Swift.
 *
 * This is intended as a TODO and is not meant to imply that the configuration model here *isn't*
 * idiomatic, just that this has not yet been considered.
 */

// LLARPConfig describes the configuration associated with the C++ implementation of the LLARP protocol
class Configuration {
  
  // Router describes the configuration associated with running the LLARP daemon with router functionality
  public struct Router {
    /*
     * TODO: IMPORTANT
     *
     * Consider and implement file protection classes, with the term used as meant in the context of Apple platform APIs
     */
    
    // number of worker threads used for cryptographic operations
    var cryptoWorkerThreads: UInt = 4
    // path to the file used for storing the "signed RC" // TODO: clarify what this is so that this comment may be updated
    var contactFilePath: String = ""
    // path to transport private key file // TODO: clarify the role this key serves to update this comment
    var transportPrivateKeyPath: String = ""
    // path to identity signing private key file // TODO: clarify the role this key serves to update this comment
    var identityPrivateKeyPath: String = ""
    // path to encryption key used for onion routing // TODO: clarify the role this key material serves to update this comment
    var onionRoutingSymmetricKeyPath: String = ""
    // explain me
    var nickname: String = "hai"
  }
  
  // API describes the configuration associated with the JSON-RPC API exposed by the LLARP daemon
  public struct API {
    // enabled describes whether the JSON-RPC API should be exposed over a network interface
    var enabled: Bool = false
    // authorizedPublicKeys describes an array of public keys that are accepted for authentication against the API
    var authorizedPublicKeys: [String] = []
    // bindAddress describes the network address that the LLARP daemon should attempt to bind to, to expose the JSON-RPC API over
    var bindAddress: String = ""
  }
  
  // System describes the configuration associated with the interaction between the LLARP daemon and the host system
  public struct System {
    /*
     * TODO: Consider relevance in macOS/iOS context
     *
     * This framework/network extension interacts with the host platform using unprivileged APIs that abstract away the concept of POSIX
     * user accounts.  For the time being however, the LLARP implementation expects this information to be provided (does it?).
     *
     * Should these be constants?
     */
    
    // user describes the POSIX user account that the LLARP daemon should run as
    var user: String = "lokinet"
    // group describes the POSIX user group that the LLARP daemon should run as
    var group: String = "lokinet"
  }
  
  // DNS describes the configuration associated with DNS services consumed and provided by the LLARP daemon
  public struct DNS {
    // upstreamResolverIPv4Addresses describes an array of IPv4 addresses for upstream DNS resolvers
    var upstreamResolverIPv4Addresses: [UInt32] = [] // consider defining as more specific IPv4 type
    
    // llarpResolverBindAddress describes the network address the LLARP DNS resolver should bind to
    var llarpResolverBindAddress: String = ""// consider replacing with an IP address interface or similar
    var llarpResolverBindPort: UInt16 = 0
  }
  
  // NetworkDatabase describes the configuration associated with the LLARP network database // written not knowing what netdb is; comment should be reviewed once clarified
  public struct NetworkDatabase {
    // skipListDirectoryPath describes the path to the directory where the network database "skiplist" information should be stored
    var skipListDirectoryPath: String = ".lokinet/netdb"
  }
  
  // Bootstrap describes the configuration associated with bootstrapping the LLARP daemon
  public struct Bootstrap {
    // nodeSignedIdentityFilePaths describes an array of file paths corresponding to signed identities of the nodes used to bootstrap the LLARP daemon
    var nodeSignedIdentityFilePaths: [String] = []
  }
  
  // ServiceNodeApp describes the configuration associated with an individual SNApp service hosted by the LLARP daemon
  public struct ServiceNodeApp {
    // nickname is an local nickname used to distinguish this service from others hosted on the same system
    var nickname: String = "hello"
    // privateKeyPath is the path to the private key used for this SNApp
    var privateKeyPath: String = ""
    // ipv4AddressRange defines the IPv4 address range allocated to this SNApp
    var ipv4AddressRange: String = "" // TODO: use more specific IPv4 range type
    // interfaceName defines the network interface name given to the virtual tun interface "owned" by this SNApp
    var interfaceName: String = ""
  }
  
  // Tunnel describes the configuration associated with the LLARP daemon's tunnel client functionality
  public struct Tunnel {
    // enabled describes whether the LLARP daemon exposes a virtual tun interface over which a lokinet-tunneled connection is provided
    var enabled: Bool = true
    // profilesFilePath is the file path to a profiles.dat file that serves an unknown purpose // TODO: clarify
    var profilesFilePath: String = ".lokinet/profiles.dat"
    // routerPublicKeyWhitelist defines an optional array of whitelisted public keys, which if set, defines which routers will be directly connected to
    var routerPublicKeyWhitelist: [String] = []
    // exitNodePublicKeyWhitelist defines an optional array of whitelisted public keys, which if set, defines which routers will be used as exit nodes
    var exitNodePublicKeyWhitelist: [String] = []
    // interfaceName defines the name of the virtual tun interface which the LLARP daemon provides a tunneled network connection over // TODO: is this relevant when we're using the NetworkExtension API?
    var interfaceName: String =  "lokitun0"
    // ipv4AddressRange defines the address range allocated for use by the LLARP daemon for tunnel client functionality
    var ipv4AddressRange: String = "10.52.74.0/24" // TODO use more specific IPv4 range type
  }
  
  // router describes the configuration associated with running a LLARP router
  public var router: Router = Router.init()
  // api describes the configuration associated with the JSON-RPC API exposed by the LLARP client daemon
  public var api: API = API.init()
  // "privileges and such"
  // system describes the configuration associated with the interaction between the LLARP client daemon and the host system
  public var system: System = System.init()
  // dns describes the configuration associated with DNS services consumed and provided by the LLARP daemon
  public var dns: DNS = DNS.init()
  // netDb describes the configuration associated with the LLARP network database // this comment was written not knowing what netDb is, and should be reviewed once this is clarified
  public var networkDatabase: NetworkDatabase = NetworkDatabase.init()
  // bootstrap describes the configuration associated with bootstrapping the LLARP client and/or router
  public var bootstrap: Bootstrap = Bootstrap.init()
  // services describes the configuration associated with any services hosted by the LLARP daemon
  public var services: [ServiceNodeApp] = []
  // tunnel describes the configuration associated with the LLARP daemon's tunnel client functionality
  public var tunnel: Tunnel = Tunnel.init()
  
  public func toINI() -> String {
    var out = "# automatically generated by LLARPConfig class\n\n"
    
    // router section
    out += "[router]\n"
    if router.cryptoWorkerThreads > 0 {
      out += "# number of CPU threads used for cryptographic operations\n"
      out += "threads=\(router.cryptoWorkerThreads)\n"
    }
    if !router.contactFilePath.isEmpty {
      out += "# path to \"signed RC\" file\n"
      out += "contact-file=\(router.contactFilePath)\n"
    }
    if !router.transportPrivateKeyPath.isEmpty {
      out += "# path to transport private key\n"
      out += "transport-privkey=\(router.transportPrivateKeyPath)\n"
    }
    if !router.identityPrivateKeyPath.isEmpty {
      out += "# path to identity signing key\n"
      out += "ident-privkey=\(router.identityPrivateKeyPath)\n"
    }
    if !router.onionRoutingSymmetricKeyPath.isEmpty {
      out += "# path to symmetric encryption key used for onion routing\n"
      out += "encryption-privkey=\(router.onionRoutingSymmetricKeyPath)\n"
    }
    if !router.nickname.isEmpty {
      out += "# public nickname used for the lokinet router\n"
      out += "nickname=\(router.nickname)\n"
    }
    out += "\n"
    
    // api section
    out += "# administration api (disabled by default)\n"
    out += "[api]\n"
    out += "enabled=\(api.enabled)\n"
    for publicKey in api.authorizedPublicKeys {
      out += "authkey=\(publicKey)\n"
    }
    if !api.bindAddress.isEmpty {
      out += "bind=\(api.bindAddress)\n"
    }
    out += "\n"
    
    // system section
    out += "# system settings for privileges and such\n"
    out += "[system]\n"
    if !system.user.isEmpty {
      out += "user=\(system.user)\n"
    }
    if !system.group.isEmpty {
      out += "group=\(system.group)\n"
    }
    out += "\n"
    
    // dns section
    out += "# dns provider configuration\n"
    out += "[dns]\n"
    for address in dns.upstreamResolverIPv4Addresses {
      out += "upstream=\(address)\n"
    }
    if  ("\(dns.llarpResolverBindAddress):\(dns.llarpResolverBindPort)").count > 1 {
      out += "bind=\(dns.llarpResolverBindAddress):\(dns.llarpResolverBindPort)\n"
    }
    out += "\n"
    
    // netdb section
    out += "# network database configuration\n"
    out += "[netdb]\n"
    if !networkDatabase.skipListDirectoryPath.isEmpty {
      out += "dir=\(networkDatabase.skipListDirectoryPath)\n"
    }
    out += "\n"
    
    // bootstrap section
    
    return out
  }
  
  // todo: fromINI function
  
}
