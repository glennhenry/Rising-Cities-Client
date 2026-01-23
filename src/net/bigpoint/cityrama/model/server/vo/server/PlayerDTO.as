package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.*;
   import net.bigpoint.cityrama.model.server.interfaces.*;
   import net.bigpoint.cityrama.model.server.vo.server.player.*;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.util.*;
   
   public class PlayerDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _defaultCity:CityDTO;
      
      private var _configUserLevelId:Number;
      
      private var _cities:Vector.<CityDTO>;
      
      private var _inventory:InventoryDTO;
      
      private var _playerName:String;
      
      private var _resources:Dictionary;
      
      private var _configNewsscreenList:ConfigNewsscreenListDTO;
      
      private var _premiumPlayer:Boolean;
      
      private var _questBooks:QuestBookManagerVo;
      
      private var _playerPaymentPackInfo:PlayerPaymentDTO;
      
      private var _enabledFeatures:Vector.<String>;
      
      private var _ui:ClientUIDataDTO;
      
      public function PlayerDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:ResourceDTO = null;
         super();
         this._id = param1.id;
         this._defaultCity = new CityDTO(param1.d);
         this._configUserLevelId = param1.cul;
         this._premiumPlayer = param1.ip;
         this._playerName = param1.n;
         this._questBooks = new QuestBookManagerVo(param1.q);
         this._inventory = new InventoryDTO(param1.i);
         this._cities = new Vector.<CityDTO>();
         for each(_loc2_ in param1.c)
         {
            this._cities.push(new CityDTO(_loc2_));
         }
         this._resources = new Dictionary();
         for each(_loc3_ in param1.r)
         {
            _loc5_ = ConfigFactory.buildResourceDTO(_loc3_);
            this._resources[_loc5_.configId] = _loc5_;
         }
         this._configNewsscreenList = new ConfigNewsscreenListDTO(param1.ns);
         this._playerPaymentPackInfo = new PlayerPaymentDTO(param1.p);
         this._enabledFeatures = new Vector.<String>();
         for each(_loc4_ in param1.ef)
         {
            this._enabledFeatures.push(_loc4_);
         }
         if(param1.ui)
         {
            this._ui = new ClientUIDataDTO(param1.ui);
         }
      }
      
      public function get defaultCity() : CityDTO
      {
         return this._defaultCity;
      }
      
      public function set defaultCity(param1:CityDTO) : void
      {
         this._defaultCity = param1;
      }
      
      public function get cities() : Vector.<CityDTO>
      {
         return this._cities;
      }
      
      public function set cities(param1:Vector.<CityDTO>) : void
      {
         this._cities = param1;
      }
      
      public function get resources() : Dictionary
      {
         return this._resources;
      }
      
      public function set resources(param1:Dictionary) : void
      {
         this._resources = param1;
      }
      
      public function get inventory() : InventoryDTO
      {
         return this._inventory;
      }
      
      public function set inventory(param1:InventoryDTO) : void
      {
         this._inventory = param1;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get premiumPlayer() : Boolean
      {
         return this._premiumPlayer;
      }
      
      public function set premiumPlayer(param1:Boolean) : void
      {
         this._premiumPlayer = param1;
      }
      
      public function get configUserLevelId() : Number
      {
         return this._configUserLevelId;
      }
      
      public function set configUserLevelId(param1:Number) : void
      {
         this._configUserLevelId = param1;
      }
      
      public function get questBooks() : QuestBookManagerVo
      {
         return this._questBooks;
      }
      
      public function set questBooks(param1:QuestBookManagerVo) : void
      {
         this._questBooks = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get playerName() : String
      {
         return this._playerName;
      }
      
      public function get configNewsscreenList() : ConfigNewsscreenListDTO
      {
         return this._configNewsscreenList;
      }
      
      public function set configNewsscreenList(param1:ConfigNewsscreenListDTO) : void
      {
         this._configNewsscreenList = param1;
      }
      
      public function get playerPaymentPackInfo() : PlayerPaymentDTO
      {
         return this._playerPaymentPackInfo;
      }
      
      public function get enabledFeatures() : Vector.<String>
      {
         return this._enabledFeatures;
      }
      
      public function set enabledFeatures(param1:Vector.<String>) : void
      {
         this._enabledFeatures = param1;
      }
      
      public function get ui() : ClientUIDataDTO
      {
         return this._ui;
      }
      
      public function set ui(param1:ClientUIDataDTO) : void
      {
         this._ui = param1;
      }
   }
}

