package net.bigpoint.cityrama.model.field
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.controller.error.ErrorHandlingCommand;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BridgeFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.VoComposer;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BoulderVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionShapeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionShapePointDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldTypeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.util.Polygon;
   import net.bigpoint.util.RandomUtilities;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayfieldProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ConfigPlayfieldProxy";
      
      public static const TILESIZE:Number = 36;
      
      public static const NO_TYPE_OF_GROUND:String = "NO_TYPE_OF_GROUND";
      
      private var _configProxy:GameConfigProxy;
      
      private var _globalBalanceProxy:GlobalBalanceProxy;
      
      private var _filePreloadProxy:FilePreloadServiceProxy;
      
      private var _questProxy:QuestProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _pObjP:PlayfieldObjectsProxy;
      
      private var _fP:FeatureProxy;
      
      private var _playfieldDTO:PlayfieldDTO;
      
      private var _type:ConfigPlayfieldTypeDTO;
      
      private var _fieldSize:Point;
      
      private var _tileSize:Number;
      
      private var _defaultPlayfieldID:int;
      
      private var _mouse2dPoint:Point = new Point();
      
      private var _energyConsumed:Number;
      
      private var _energyProduced:Number;
      
      private var _happynessConsumed:Number;
      
      private var _happynessProduced:Number;
      
      public function PlayfieldProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._globalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         this._filePreloadProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
         this._timerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         this._questProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         this._tileSize = TILESIZE;
      }
      
      private function get featureProxy() : FeatureProxy
      {
         if(this._fP == null)
         {
            this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         }
         return this._fP;
      }
      
      public function get energyConsumed() : Number
      {
         return this._energyConsumed;
      }
      
      public function get energyProduced() : Number
      {
         return this._energyProduced;
      }
      
      public function set energyConsumed(param1:Number) : void
      {
         this._energyConsumed = param1;
         sendNotification(ApplicationNotificationConstants.ENERGY_CONSUMED_CHANGED);
      }
      
      public function set energyProduced(param1:Number) : void
      {
         this._energyProduced = param1;
         sendNotification(ApplicationNotificationConstants.ENERGY_PRODUCED_CHANGED);
      }
      
      public function get happynessConsumed() : Number
      {
         return this._happynessConsumed;
      }
      
      public function set happynessConsumed(param1:Number) : void
      {
         this._happynessConsumed = param1;
         sendNotification(ApplicationNotificationConstants.HAPPYNESS_CONSUMED_CHANGED);
         this.updateShops();
      }
      
      public function get happynessProduced() : Number
      {
         return this._happynessProduced;
      }
      
      public function set happynessProduced(param1:Number) : void
      {
         this._happynessProduced = param1;
         sendNotification(ApplicationNotificationConstants.HAPPYNESS_PRODUCED_CHANGED);
         this.updateShops();
      }
      
      public function set defaultPlayfieldID(param1:int) : void
      {
         this._defaultPlayfieldID = param1;
      }
      
      public function get type() : ConfigPlayfieldTypeDTO
      {
         return this._type;
      }
      
      public function set type(param1:ConfigPlayfieldTypeDTO) : void
      {
         this._type = param1;
      }
      
      public function get fieldSize() : Point
      {
         return this._fieldSize;
      }
      
      public function get tileSize() : Number
      {
         return this._tileSize;
      }
      
      public function get config() : ConfigPlayfieldDTO
      {
         if(this.playfieldDTO)
         {
            return this.playfieldDTO.config;
         }
         return null;
      }
      
      private function setFieldSizeByConfig(param1:ConfigPlayfieldDTO) : void
      {
         if(param1)
         {
            this._fieldSize = new Point(param1.maxX * this._tileSize,param1.maxY * this._tileSize);
         }
      }
      
      public function get playfieldDTO() : PlayfieldDTO
      {
         return this._playfieldDTO;
      }
      
      public function set playfieldDTO(param1:PlayfieldDTO) : void
      {
         var _loc2_:* = false;
         if(!RandomUtilities.isEqual(param1,this._playfieldDTO))
         {
            _loc2_ = this._playfieldDTO != null;
            this._playfieldDTO = param1;
            this.setFieldSizeByConfig(this._playfieldDTO.config);
            this.defaultPlayfieldID = this._playfieldDTO.id;
            if(_loc2_)
            {
               sendNotification(ApplicationNotificationConstants.FIELD_DATA_CHANGED);
            }
         }
      }
      
      public function get mouse2dPoint() : Point
      {
         return this._mouse2dPoint;
      }
      
      public function get mouseMatrixPoint() : Point
      {
         var _loc1_:Point = this._mouse2dPoint.clone();
         _loc1_.x = Math.floor(_loc1_.x / this.tileSize);
         _loc1_.y = Math.floor(_loc1_.y / this.tileSize);
         return _loc1_;
      }
      
      public function set mouse2dPoint(param1:Point) : void
      {
         if(param1.x == this._mouse2dPoint.x && param1.y == this._mouse2dPoint.y)
         {
            return;
         }
         this._mouse2dPoint = param1;
         sendNotification(ApplicationNotificationConstants.FIELD_MOUSE_MOVE);
      }
      
      public function get aquiredPlayFieldSize() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.width = this.playfieldDTO.sizeX;
         _loc1_.height = this.playfieldDTO.sizeY;
         _loc1_.x = this.playfieldDTO.startX;
         _loc1_.y = this.playfieldDTO.startY;
         return _loc1_;
      }
      
      public function get maxPlayFieldSize() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.width = this.config.maxX;
         _loc1_.height = this.config.maxY;
         _loc1_.x = 0;
         _loc1_.y = HorizionSettingsVo.playfieldYOffset(this.config.id);
         return _loc1_;
      }
      
      public function get maxUsablePlayfieldSize() : Rectangle
      {
         var _loc1_:Rectangle = new Rectangle();
         _loc1_.x = 0;
         _loc1_.y = HorizionSettingsVo.playfieldYOffset(this.config.id);
         _loc1_.width = this.config.maxX - _loc1_.x;
         _loc1_.height = this.config.maxY - _loc1_.y;
         return _loc1_;
      }
      
      public function checkIfRectIsInUsablePlayfieldSize(param1:Rectangle) : Boolean
      {
         return this.maxUsablePlayfieldSize.containsRect(param1);
      }
      
      public function updateShops() : void
      {
         var _loc1_:ShopFieldObject = null;
         if(this.playfieldObjProxy != null)
         {
            for each(_loc1_ in this.playfieldObjProxy.needShopList)
            {
               _loc1_.shopFieldObjectVo.globalMoodModifier = this._globalBalanceProxy.happinessOutputModifier;
               (_loc1_ as BillboardObject).invalidateIconStateManager();
            }
         }
      }
      
      private function get playfieldObjProxy() : PlayfieldObjectsProxy
      {
         if(this._pObjP == null)
         {
            this._pObjP = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         }
         return this._pObjP;
      }
      
      public function generateBuildings(param1:BuildingDTO) : void
      {
         var _loc5_:Vector.<ImprovementVo> = null;
         var _loc6_:ImprovementDTO = null;
         var _loc7_:SecurityMatrixProxy = null;
         var _loc2_:ConfigPlayfieldItemDTO = this._configProxy.getConfigPlayfieldItemById(param1.configId);
         var _loc3_:Cuboid = new Cuboid(param1.posX,param1.posY,VectorUtilities.getMinValue(_loc2_.zLevels),_loc2_.sizeX,_loc2_.sizeY,_loc2_.zLevels.length);
         var _loc4_:BillboardObjectVo = BillboardObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc2_,_loc3_,this._timerProxy,this._configProxy,this));
         if(_loc4_ is ProductionFieldObjectVo)
         {
            (_loc4_ as ProductionFieldObjectVo).currentEventLocaleId = this.eventProxy.currentRunningEventQuestLocaleId;
            (_loc4_ as ProductionFieldObjectVo).currentRunningEventGFXId = this.eventProxy.currentRunningEventQuestGfxId;
         }
         if(_loc4_ is IImprovable)
         {
            _loc5_ = new Vector.<ImprovementVo>();
            for each(_loc6_ in param1.improvements)
            {
               _loc5_.push(new ImprovementVo(_loc6_,this._configProxy.config.improvements[_loc6_.configId]));
            }
            (_loc4_ as IImprovable).currentImprovements = _loc5_;
         }
         _loc4_.buildingDTO = param1;
         PlayfieldObjectsProxy.addIconOffsets(_loc4_,this._filePreloadProxy);
         this.playfieldObjProxy.addGameObjectByData(_loc4_);
         if(_loc4_ is IEmergencyInfrastructureVO)
         {
            _loc7_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
            _loc7_.addObject(_loc4_ as IEmergencyInfrastructureVO);
         }
      }
      
      private function get eventProxy() : EventProxy
      {
         return facade.retrieveProxy(EventProxy.NAME) as EventProxy;
      }
      
      public function generateDecorations(param1:DecorationVo) : void
      {
         var _loc5_:SecurityMatrixProxy = null;
         var _loc2_:ConfigPlayfieldItemDTO = this._configProxy.getConfigPlayfieldItemById(param1.configId);
         var _loc3_:Cuboid = new Cuboid(param1.dto.posX,param1.dto.posY,VectorUtilities.getMinValue(_loc2_.zLevels),_loc2_.sizeX,_loc2_.sizeY,_loc2_.zLevels.length);
         var _loc4_:DecorationFieldObjectVo = DecorationFieldObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc2_,_loc3_,this._timerProxy,this._configProxy,this));
         _loc4_.decorationVo = param1;
         PlayfieldObjectsProxy.addIconOffsets(_loc4_ as BillboardObjectVo,this._filePreloadProxy);
         this.playfieldObjProxy.addGameObjectByData(_loc4_);
         if(_loc4_ is IEmergencyInfrastructureVO)
         {
            _loc5_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
            _loc5_.addObject(_loc4_ as IEmergencyInfrastructureVO);
         }
      }
      
      public function generateBoulders(param1:BoulderVo) : void
      {
         var _loc4_:BoulderObjectVo = null;
         var _loc2_:ConfigPlayfieldItemDTO = this._configProxy.getConfigPlayfieldItemById(param1.configId);
         var _loc3_:Cuboid = new Cuboid(param1.posX,param1.posY,VectorUtilities.getMinValue(_loc2_.zLevels),_loc2_.sizeX,_loc2_.sizeY,_loc2_.zLevels.length);
         _loc4_ = new BoulderObjectVo(_loc2_);
         _loc4_.matrix3dCoordinates = _loc3_;
         _loc4_ = ConfigFactory.buildBoulderObjectVo(_loc4_);
         _loc4_.boulderVo = param1;
         PlayfieldObjectsProxy.addIconOffsets(_loc4_ as BillboardObjectVo,this._filePreloadProxy);
         this.playfieldObjProxy.addGameObjectByData(_loc4_);
      }
      
      public function generateGrounds(param1:GroundDTO) : void
      {
         var _loc2_:ConfigPlayfieldItemDTO = this._configProxy.getConfigPlayfieldItemById(param1.configId);
         var _loc3_:Cuboid = new Cuboid(param1.posX,param1.posY,VectorUtilities.getMinValue(_loc2_.zLevels),_loc2_.sizeX,_loc2_.sizeY,1);
         var _loc4_:PlaneObjectVo = PlaneObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc2_,_loc3_,this._timerProxy,this._configProxy,this));
         _loc4_.groundDTO = param1;
         this.playfieldObjProxy.addGameObjectByData(_loc4_);
      }
      
      public function createBuidingDTOsForPlayfieldDTO(param1:Object) : Vector.<BuildingDTO>
      {
         var _loc3_:BuildingDTO = null;
         var _loc4_:Object = null;
         var _loc2_:Vector.<BuildingDTO> = new Vector.<BuildingDTO>();
         for each(_loc4_ in param1)
         {
            _loc3_ = VoComposer.getBuildingVo(_loc4_,this._configProxy);
            if(!_loc3_.isCorrupt)
            {
               _loc2_.push(_loc3_);
            }
            else
            {
               facade.registerCommand(ApplicationNotificationConstants.ERROR_BUILDING_DTO_CORRUPT,ErrorHandlingCommand);
               sendNotification(ApplicationNotificationConstants.ERROR_BUILDING_DTO_CORRUPT,_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function createDecorationVosForPlayfieldDTO(param1:Object) : Vector.<DecorationVo>
      {
         var _loc3_:DecorationVo = null;
         var _loc4_:Object = null;
         var _loc2_:Vector.<DecorationVo> = new Vector.<DecorationVo>();
         for each(_loc4_ in param1)
         {
            _loc3_ = VoComposer.getDecorationVo(_loc4_,this._configProxy);
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function createGroundVosForPlayfieldDTO(param1:Object) : Vector.<GroundDTO>
      {
         var _loc3_:GroundDTO = null;
         var _loc4_:Object = null;
         var _loc2_:Vector.<GroundDTO> = new Vector.<GroundDTO>();
         for each(_loc4_ in param1)
         {
            _loc3_ = VoComposer.getGroundgVo(_loc4_,this._configProxy);
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function getBridgeVo() : BridgeFieldObjectVo
      {
         var _loc1_:BridgeFieldObjectVo = new BridgeFieldObjectVo();
         var _loc2_:Boolean = this.featureProxy.isFeatureEnabled(ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH);
         if(_loc2_)
         {
            _loc1_.state = PlayfieldSwitchFieldObjectVo.STATE_DONE;
         }
         else if(this._questProxy.bridgeRepairQuestActive)
         {
            _loc1_.state = PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS;
         }
         else
         {
            _loc1_.state = PlayfieldSwitchFieldObjectVo.STATE_BLOCKED;
         }
         var _loc3_:Rectangle = new Rectangle(0,0,1,1);
         switch(this.config.gfxId)
         {
            case HorizionSettingsVo.CITY_PLAYFIELD_GFXID:
               _loc1_.currentPlayfieldId = this.config.id;
               _loc3_.x = 26;
               _loc3_.y = 44;
               break;
            case HorizionSettingsVo.COASTAL_PLAYFIELD_GFXID:
               _loc1_.currentPlayfieldId = this.config.id;
               _loc3_.x = 4;
               _loc3_.y = 1;
         }
         _loc1_.matrixCoordinates = _loc3_;
         return _loc1_;
      }
      
      public function getPlayfieldConfigById(param1:uint) : ConfigPlayfieldDTO
      {
         var _loc2_:ConfigPlayfieldDTO = null;
         for each(_loc2_ in this._configProxy.config.playfields)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getGroundTypeByCoordinates(param1:Point) : String
      {
         var _loc4_:ConfigGroundRestrictionDTO = null;
         var _loc5_:ConfigGroundRestrictionShapeDTO = null;
         var _loc6_:Array = null;
         var _loc7_:ConfigGroundRestrictionShapePointDTO = null;
         var _loc8_:Polygon = null;
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:Dictionary = _loc2_.getRestrictions() as Dictionary;
         for each(_loc4_ in _loc3_)
         {
            for each(_loc5_ in _loc4_.configGroundRestrictionShapes)
            {
               _loc6_ = new Array();
               for each(_loc7_ in _loc5_.shapePoints)
               {
                  _loc6_.push(_loc7_);
               }
               _loc6_.sortOn(["shapePosition"],Array.NUMERIC);
               _loc8_ = new Polygon(_loc6_);
               if(_loc8_.containsPoint(param1.x,param1.y) && _loc4_.playfieldId == this.config.id)
               {
                  return _loc4_.groundType;
               }
            }
         }
         return NO_TYPE_OF_GROUND;
      }
   }
}

