package net.bigpoint.cityrama.model.game
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.preloader.ApplicationSettingsProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadDynamicServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.LoadingItemVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUpcomingEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.util.StringUtil;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class GameConfigProxy extends Proxy
   {
      
      public static const NAME:String = "GameConfigProxy";
      
      private var _config:ConfigDTO;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _cvTagProxy:CvTagProxy;
      
      private var _fileRuntimeLoadDynamicServiceProxy:FileRuntimeLoadDynamicServiceProxy;
      
      private var _marketPlaceMaintenance:Boolean;
      
      public function GameConfigProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         this._cvTagProxy = facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         this._fileRuntimeLoadDynamicServiceProxy = FileRuntimeLoadDynamicServiceProxy(facade.retrieveProxy(FileRuntimeLoadDynamicServiceProxy.NAME));
         this._marketPlaceMaintenance = this._flashVarsProxy.marketMaintenance;
      }
      
      override public function onRemove() : void
      {
      }
      
      public function getConfigPlayfieldItemById(param1:Number) : ConfigPlayfieldItemDTO
      {
         if(ConfigPlayfieldItemDTO(this._config.items[param1]) == null)
         {
            return null;
         }
         return ConfigPlayfieldItemDTO(this._config.items[param1]);
      }
      
      public function getConfigPlayfieldVoById(param1:Number) : ConfigPlayfieldDTO
      {
         return ConfigPlayfieldDTO(this._config.playfields[param1]);
      }
      
      public function getSwfLoadingList() : Vector.<LoadingItemVo>
      {
         var _loc2_:ConfigPlayfieldItemDTO = null;
         var _loc3_:LoadingItemVo = null;
         var _loc1_:Vector.<LoadingItemVo> = new Vector.<LoadingItemVo>();
         for each(_loc2_ in this._config.items)
         {
            if(_loc2_.animatedSwfPath != null)
            {
               _loc3_ = new LoadingItemVo();
               _loc3_.path = _loc2_.animatedSwfPath;
               _loc3_.name = _loc2_.animatedSwfName;
               _loc3_.preload = _loc2_.gfxId == 31006 || _loc2_.gfxId == 16005 ? false : _loc2_.preload;
               _loc1_.push(_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function set config(param1:ConfigDTO) : void
      {
         this._config = this.overwritePaths(param1);
         this._config = ConfigFactory.buildConfigDTO(this._config);
         sendNotification(ApplicationNotificationConstants.GAME_CONFIG_NEW);
      }
      
      private function overwritePaths(param1:ConfigDTO) : ConfigDTO
      {
         var _loc4_:XML = null;
         var _loc5_:Dictionary = null;
         var _loc6_:ConfigPlayfieldItemDTO = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:LoadingItemVo = null;
         var _loc2_:ApplicationSettingsProxy = facade.retrieveProxy(ApplicationSettingsProxy.NAME) as ApplicationSettingsProxy;
         var _loc3_:XML = _loc2_.cvRuntimeLinksXML;
         for each(_loc4_ in _loc3_..playfieldItems.playfieldItem)
         {
            for each(_loc6_ in param1.getItemsByGfxId(Number(_loc4_.@id)))
            {
               if(_loc6_ != null)
               {
                  _loc6_.animatedSwfPath = _loc4_.swf.text();
                  _loc6_.animatedSwfName = "FieldItem_" + _loc4_.@id + "_0_0";
               }
            }
         }
         _loc5_ = new Dictionary();
         for each(_loc4_ in _loc3_..guiItems.guiItem)
         {
            _loc7_ = _loc4_.swf.text();
            _loc8_ = int(_loc7_.lastIndexOf(".swf"));
            _loc9_ = _loc7_.substring(_loc7_.lastIndexOf("/") + 1,_loc8_);
            _loc10_ = StringUtil.replaceInString(_loc9_,".","_");
            _loc11_ = new LoadingItemVo();
            _loc11_.name = _loc10_;
            _loc11_.path = _loc7_;
            _loc11_.loadingDone = false;
            _loc11_.preload = false;
            _loc5_[_loc10_] = _loc7_;
         }
         this._fileRuntimeLoadDynamicServiceProxy.init(_loc5_);
         return param1;
      }
      
      public function get goods() : Dictionary
      {
         return this._config.goods;
      }
      
      public function get resources() : Dictionary
      {
         return this._config.resources;
      }
      
      public function get resourcesIds() : Dictionary
      {
         return this._config.resourceIds;
      }
      
      public function get resourcesStrings() : Dictionary
      {
         return this._config.resourceStrings;
      }
      
      public function getLevelById(param1:Number) : ConfigUserLevelDTO
      {
         return this.config.levels[param1];
      }
      
      public function get config() : ConfigDTO
      {
         return this._config;
      }
      
      public function getConfigPlayfieldItemsByTags(param1:Vector.<String>, param2:Vector.<String>) : Vector.<ConfigPlayfieldItemDTO>
      {
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:ConfigPlayfieldItemDTO = null;
         var _loc7_:Number = NaN;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc3_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         for each(_loc6_ in this._config.items)
         {
            _loc4_ = 0;
            _loc5_ = false;
            for each(_loc7_ in _loc6_.tagIds)
            {
               for each(_loc8_ in param1)
               {
                  if(_loc8_ == ConfigTagDTO(this.config.tags[_loc7_]).tagName)
                  {
                     _loc4_++;
                  }
               }
               for each(_loc9_ in param2)
               {
                  if(_loc9_ == ConfigTagDTO(this.config.tags[_loc7_]).tagName)
                  {
                     _loc5_ = true;
                  }
               }
            }
            if(!_loc5_)
            {
               if(_loc4_ == param1.length)
               {
                  _loc3_.push(_loc6_);
               }
            }
         }
         return _loc3_;
      }
      
      public function getFirstLevelConfigOfBuilding(param1:int) : ConfigPlayfieldItemDTO
      {
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc2_:ConfigPlayfieldItemDTO = this._config.items[param1];
         var _loc3_:Boolean = false;
         while(!_loc3_)
         {
            _loc3_ = true;
            for each(_loc4_ in this._config.items)
            {
               if(_loc4_.nextConfigId == _loc2_.id)
               {
                  _loc2_ = _loc4_;
                  _loc3_ = false;
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      public function getLastLevelConfigOfBuilding(param1:int) : ConfigPlayfieldItemDTO
      {
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = this.getAllLevelConfigs(param1);
         if(_loc2_.length > 0)
         {
            return _loc2_[_loc2_.length - 1];
         }
         return null;
      }
      
      public function getAllLevelConfigs(param1:int) : Vector.<ConfigPlayfieldItemDTO>
      {
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         var _loc3_:ConfigPlayfieldItemDTO = this.getFirstLevelConfigOfBuilding(param1);
         _loc2_.push(_loc3_);
         while(_loc3_.nextConfigId != 0)
         {
            _loc3_ = this._config.items[_loc3_.nextConfigId];
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function get marketPlaceMaintenance() : Boolean
      {
         return this._marketPlaceMaintenance;
      }
      
      public function set marketPlaceMaintenance(param1:Boolean) : void
      {
         if(param1 != this._marketPlaceMaintenance)
         {
            this._marketPlaceMaintenance = param1;
            sendNotification(ApplicationNotificationConstants.MARKETPLACE_MAINTENANCE_CHANGED);
         }
      }
      
      public function getConfigPlayfieldItemsByPermissionId(param1:Number) : Vector.<ConfigPlayfieldItemDTO>
      {
         var _loc3_:ConfigPlayfieldItemDTO = null;
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         for each(_loc3_ in this.config.items)
         {
            if(_loc3_.permissionConfigId == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function updateEvents(param1:Vector.<ConfigEventDTO>) : void
      {
         this.config.runningEvents = param1;
         sendNotification(ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED);
      }
      
      public function updateUpcommingEvents(param1:Vector.<ConfigUpcomingEventDTO>) : void
      {
         this.config.upcomingEvents = param1;
         sendNotification(ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED);
      }
      
      public function getRestrictions() : Dictionary
      {
         return this.config.restrictions;
      }
   }
}

