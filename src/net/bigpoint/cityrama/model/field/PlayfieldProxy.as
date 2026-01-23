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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         NAME = "ConfigPlayfieldProxy";
         if(_loc2_)
         {
            TILESIZE = 36;
            if(_loc2_ || PlayfieldProxy)
            {
               addr004a:
               NO_TYPE_OF_GROUND = "NO_TYPE_OF_GROUND";
            }
         }
         return;
      }
      §§goto(addr004a);
      
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
      
      private var _mouse2dPoint:Point;
      
      private var _energyConsumed:Number;
      
      private var _energyProduced:Number;
      
      private var _happynessConsumed:Number;
      
      private var _happynessProduced:Number;
      
      public function PlayfieldProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            this._mouse2dPoint = new Point();
            if(!_loc3_)
            {
               addr002f:
               super(param1,param2);
               if(_loc4_)
               {
                  this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  if(_loc4_)
                  {
                     this._globalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
                     addr0050:
                     if(!_loc3_)
                     {
                        this._filePreloadProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
                        if(_loc4_ || Boolean(param2))
                        {
                           §§goto(addr0099);
                        }
                        §§goto(addr00f7);
                     }
                     addr0099:
                     this._timerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
                     if(_loc4_)
                     {
                        this._questProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr00df);
                        }
                        §§goto(addr00f7);
                     }
                     §§goto(addr00df);
                  }
                  addr00df:
                  this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                  if(_loc4_)
                  {
                     addr00f7:
                     this._tileSize = TILESIZE;
                  }
                  return;
               }
               §§goto(addr0099);
            }
            §§goto(addr0050);
         }
         §§goto(addr002f);
      }
      
      private function get featureProxy() : FeatureProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._fP);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr003b:
                     this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                  }
               }
               return this._fP;
            }
         }
         §§goto(addr003b);
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._energyConsumed = param1;
            if(!(_loc3_ && _loc2_))
            {
               addr002c:
               sendNotification(ApplicationNotificationConstants.ENERGY_CONSUMED_CHANGED);
            }
            return;
         }
         §§goto(addr002c);
      }
      
      public function set energyProduced(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._energyProduced = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               addr003e:
               sendNotification(ApplicationNotificationConstants.ENERGY_PRODUCED_CHANGED);
            }
            return;
         }
         §§goto(addr003e);
      }
      
      public function get happynessConsumed() : Number
      {
         return this._happynessConsumed;
      }
      
      public function set happynessConsumed(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._happynessConsumed = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0037:
               sendNotification(ApplicationNotificationConstants.HAPPYNESS_CONSUMED_CHANGED);
               if(_loc2_)
               {
                  this.updateShops();
               }
            }
            return;
         }
         §§goto(addr0037);
      }
      
      public function get happynessProduced() : Number
      {
         return this._happynessProduced;
      }
      
      public function set happynessProduced(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._happynessProduced = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0041);
            }
            §§goto(addr0059);
         }
         addr0041:
         sendNotification(ApplicationNotificationConstants.HAPPYNESS_PRODUCED_CHANGED);
         if(_loc2_ || Boolean(this))
         {
            addr0059:
            this.updateShops();
         }
      }
      
      public function set defaultPlayfieldID(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._defaultPlayfieldID = param1;
         }
      }
      
      public function get type() : ConfigPlayfieldTypeDTO
      {
         return this._type;
      }
      
      public function set type(param1:ConfigPlayfieldTypeDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._type = param1;
         }
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.playfieldDTO);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr003e);
                  }
               }
               §§goto(addr0041);
            }
            addr003e:
            return this.playfieldDTO.config;
         }
         addr0041:
         return null;
      }
      
      private function setFieldSizeByConfig(param1:ConfigPlayfieldDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(param1)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr003f:
                  this._fieldSize = new Point(param1.maxX * this._tileSize,param1.maxY * this._tileSize);
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      public function get playfieldDTO() : PlayfieldDTO
      {
         return this._playfieldDTO;
      }
      
      public function set playfieldDTO(param1:PlayfieldDTO) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = false;
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(RandomUtilities.isEqual(param1,this._playfieldDTO));
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     §§push(this._playfieldDTO == null);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(!§§pop());
                        if(_loc3_)
                        {
                           _loc2_ = §§pop();
                           if(_loc3_ || Boolean(this))
                           {
                              this._playfieldDTO = param1;
                              if(!_loc4_)
                              {
                                 §§goto(addr007f);
                              }
                              §§goto(addr00c7);
                           }
                           addr007f:
                           this.setFieldSizeByConfig(this._playfieldDTO.config);
                           if(_loc3_ || Boolean(this))
                           {
                              addr00a4:
                              this.defaultPlayfieldID = this._playfieldDTO.id;
                              if(_loc3_ || Boolean(this))
                              {
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00c7);
                           }
                           addr00bc:
                           §§goto(addr00bd);
                        }
                     }
                     addr00bd:
                     if(_loc2_)
                     {
                        if(!_loc4_)
                        {
                           addr00c7:
                           sendNotification(ApplicationNotificationConstants.FIELD_DATA_CHANGED);
                        }
                     }
                     §§goto(addr00d2);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr00d2);
            }
            §§goto(addr00bd);
         }
         addr00d2:
      }
      
      public function get mouse2dPoint() : Point
      {
         return this._mouse2dPoint;
      }
      
      public function get mouseMatrixPoint() : Point
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Point = this._mouse2dPoint.clone();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.x = Math.floor(_loc1_.x / this.tileSize);
            if(!(_loc2_ && Boolean(this)))
            {
               addr0060:
               _loc1_.y = Math.floor(_loc1_.y / this.tileSize);
            }
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      public function set mouse2dPoint(param1:Point) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(param1.x == this._mouse2dPoint.x);
            if(!_loc2_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§pop();
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr005f:
                        if(param1.y == this._mouse2dPoint.y)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr007b);
                           }
                        }
                        this._mouse2dPoint = param1;
                        if(_loc3_ || _loc2_)
                        {
                           sendNotification(ApplicationNotificationConstants.FIELD_MOUSE_MOVE);
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr005f);
         }
         addr007b:
      }
      
      public function get aquiredPlayFieldSize() : Rectangle
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rectangle = new Rectangle();
         if(_loc2_)
         {
            _loc1_.width = this.playfieldDTO.sizeX;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.height = this.playfieldDTO.sizeY;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.x = this.playfieldDTO.startX;
                  if(_loc2_)
                  {
                     addr0076:
                     _loc1_.y = this.playfieldDTO.startY;
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0076);
            }
            addr0080:
            return _loc1_;
         }
         §§goto(addr0076);
      }
      
      public function get maxPlayFieldSize() : Rectangle
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rectangle = new Rectangle();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = this.config.maxX;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.height = this.config.maxY;
               addr004c:
               if(_loc3_)
               {
                  _loc1_.x = 0;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0079:
                     _loc1_.y = HorizionSettingsVo.playfieldYOffset(this.config.id);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0079);
            }
            addr0088:
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      public function get maxUsablePlayfieldSize() : Rectangle
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rectangle = new Rectangle();
         if(_loc3_)
         {
            _loc1_.x = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0042:
               _loc1_.y = HorizionSettingsVo.playfieldYOffset(this.config.id);
               if(_loc3_)
               {
                  _loc1_.width = this.config.maxX - _loc1_.x;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr007b:
                     _loc1_.height = this.config.maxY - _loc1_.y;
                  }
                  return _loc1_;
               }
            }
            §§goto(addr007b);
         }
         §§goto(addr0042);
      }
      
      public function checkIfRectIsInUsablePlayfieldSize(param1:Rectangle) : Boolean
      {
         return this.maxUsablePlayfieldSize.containsRect(param1);
      }
      
      public function updateShops() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ShopFieldObject = null;
         if(!(_loc5_ && Boolean(_loc1_)))
         {
            if(this.playfieldObjProxy != null)
            {
               var _loc3_:* = this.playfieldObjProxy.needShopList;
               addr0030:
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc5_ && Boolean(this)))
                  {
                     _loc1_.shopFieldObjectVo.globalMoodModifier = this._globalBalanceProxy.happinessOutputModifier;
                     if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  (_loc1_ as BillboardObject).invalidateIconStateManager();
               }
            }
            return;
         }
         §§goto(addr0030);
      }
      
      private function get playfieldObjProxy() : PlayfieldObjectsProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._pObjP);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr0033:
                     this._pObjP = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  }
               }
               return this._pObjP;
            }
         }
         §§goto(addr0033);
      }
      
      public function generateBuildings(param1:BuildingDTO) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc5_:Vector.<ImprovementVo> = null;
         var _loc6_:ImprovementDTO = null;
         var _loc7_:SecurityMatrixProxy = null;
         var _loc2_:ConfigPlayfieldItemDTO = this._configProxy.getConfigPlayfieldItemById(param1.configId);
         var _loc3_:Cuboid = new Cuboid(param1.posX,param1.posY,VectorUtilities.getMinValue(_loc2_.zLevels),_loc2_.sizeX,_loc2_.sizeY,_loc2_.zLevels.length);
         var _loc4_:BillboardObjectVo = BillboardObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc2_,_loc3_,this._timerProxy,this._configProxy,this));
         §§push(_loc4_ is ProductionFieldObjectVo);
         if(!(_loc11_ && Boolean(this)))
         {
            if(§§pop())
            {
               if(!(_loc11_ && Boolean(_loc2_)))
               {
                  (_loc4_ as ProductionFieldObjectVo).currentEventLocaleId = this.eventProxy.currentRunningEventQuestLocaleId;
                  if(_loc10_)
                  {
                     (_loc4_ as ProductionFieldObjectVo).currentRunningEventGFXId = this.eventProxy.currentRunningEventQuestGfxId;
                     if(!_loc11_)
                     {
                        addr00e0:
                        addr00e6:
                        if(_loc4_ is IImprovable)
                        {
                           addr00ea:
                           _loc5_ = new Vector.<ImprovementVo>();
                           for each(_loc6_ in param1.improvements)
                           {
                              if(_loc10_)
                              {
                                 _loc5_.push(new ImprovementVo(_loc6_,this._configProxy.config.improvements[_loc6_.configId]));
                              }
                           }
                           if(!(_loc11_ && Boolean(_loc3_)))
                           {
                              (_loc4_ as IImprovable).currentImprovements = _loc5_;
                           }
                        }
                        _loc4_.buildingDTO = param1;
                        if(_loc10_ || Boolean(param1))
                        {
                           PlayfieldObjectsProxy.addIconOffsets(_loc4_,this._filePreloadProxy);
                           if(_loc10_)
                           {
                              addr0183:
                              this.playfieldObjProxy.addGameObjectByData(_loc4_);
                              if(!(_loc11_ && Boolean(this)))
                              {
                                 §§goto(addr01a7);
                              }
                              §§goto(addr01b1);
                           }
                           addr01a7:
                           if(_loc4_ is IEmergencyInfrastructureVO)
                           {
                              addr01b1:
                              _loc7_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
                              _loc7_.addObject(_loc4_ as IEmergencyInfrastructureVO);
                           }
                           return;
                        }
                        §§goto(addr0183);
                     }
                  }
                  §§goto(addr00ea);
               }
            }
            §§goto(addr00e0);
         }
         §§goto(addr00e6);
      }
      
      private function get eventProxy() : EventProxy
      {
         return facade.retrieveProxy(EventProxy.NAME) as EventProxy;
      }
      
      public function generateDecorations(param1:DecorationVo) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:SecurityMatrixProxy = null;
         var _loc2_:ConfigPlayfieldItemDTO = this._configProxy.getConfigPlayfieldItemById(param1.configId);
         var _loc3_:Cuboid = new Cuboid(param1.dto.posX,param1.dto.posY,VectorUtilities.getMinValue(_loc2_.zLevels),_loc2_.sizeX,_loc2_.sizeY,_loc2_.zLevels.length);
         var _loc4_:DecorationFieldObjectVo = DecorationFieldObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc2_,_loc3_,this._timerProxy,this._configProxy,this));
         _loc4_.decorationVo = param1;
         if(!_loc6_)
         {
            PlayfieldObjectsProxy.addIconOffsets(_loc4_ as BillboardObjectVo,this._filePreloadProxy);
            if(!(_loc6_ && Boolean(param1)))
            {
               addr00b3:
               this.playfieldObjProxy.addGameObjectByData(_loc4_);
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  if(_loc4_ is IEmergencyInfrastructureVO)
                  {
                     addr00e2:
                     _loc5_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
                     _loc5_.addObject(_loc4_ as IEmergencyInfrastructureVO);
                  }
                  return;
               }
            }
            §§goto(addr00e2);
         }
         §§goto(addr00b3);
      }
      
      public function generateBoulders(param1:BoulderVo) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:BoulderObjectVo = null;
         var _loc2_:ConfigPlayfieldItemDTO = this._configProxy.getConfigPlayfieldItemById(param1.configId);
         var _loc3_:Cuboid = new Cuboid(param1.posX,param1.posY,VectorUtilities.getMinValue(_loc2_.zLevels),_loc2_.sizeX,_loc2_.sizeY,_loc2_.zLevels.length);
         _loc4_ = new BoulderObjectVo(_loc2_);
         _loc4_.matrix3dCoordinates = _loc3_;
         var _temp_2:* = ConfigFactory.buildBoulderObjectVo(_loc4_);
         _loc4_ = ConfigFactory.buildBoulderObjectVo(_loc4_);
         _loc4_.boulderVo = param1;
         if(_loc5_)
         {
            PlayfieldObjectsProxy.addIconOffsets(_loc4_ as BillboardObjectVo,this._filePreloadProxy);
            if(_loc5_ || Boolean(_loc2_))
            {
               addr00b7:
               this.playfieldObjProxy.addGameObjectByData(_loc4_);
            }
            return;
         }
         §§goto(addr00b7);
      }
      
      public function generateGrounds(param1:GroundDTO) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigPlayfieldItemDTO = this._configProxy.getConfigPlayfieldItemById(param1.configId);
         var _loc3_:Cuboid = new Cuboid(param1.posX,param1.posY,VectorUtilities.getMinValue(_loc2_.zLevels),_loc2_.sizeX,_loc2_.sizeY,1);
         var _loc4_:PlaneObjectVo = PlaneObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc2_,_loc3_,this._timerProxy,this._configProxy,this));
         _loc4_.groundDTO = param1;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            this.playfieldObjProxy.addGameObjectByData(_loc4_);
         }
      }
      
      public function createBuidingDTOsForPlayfieldDTO(param1:Object) : Vector.<BuildingDTO>
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:BuildingDTO = null;
         var _loc4_:Object = null;
         var _loc2_:Vector.<BuildingDTO> = new Vector.<BuildingDTO>();
         for each(_loc4_ in param1)
         {
            _loc3_ = VoComposer.getBuildingVo(_loc4_,this._configProxy);
            if(!_loc8_)
            {
               if(!_loc3_.isCorrupt)
               {
                  if(_loc8_ && Boolean(_loc3_))
                  {
                     continue;
                  }
                  addr008c:
                  _loc2_.push(_loc3_);
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               else
               {
                  facade.registerCommand(ApplicationNotificationConstants.ERROR_BUILDING_DTO_CORRUPT,ErrorHandlingCommand);
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               sendNotification(ApplicationNotificationConstants.ERROR_BUILDING_DTO_CORRUPT,_loc3_);
               continue;
            }
            §§goto(addr008c);
         }
         return _loc2_;
      }
      
      public function createDecorationVosForPlayfieldDTO(param1:Object) : Vector.<DecorationVo>
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:DecorationVo = null;
         var _loc4_:Object = null;
         var _loc2_:Vector.<DecorationVo> = new Vector.<DecorationVo>();
         for each(_loc4_ in param1)
         {
            _loc3_ = VoComposer.getDecorationVo(_loc4_,this._configProxy);
            if(_loc7_ || Boolean(_loc3_))
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function createGroundVosForPlayfieldDTO(param1:Object) : Vector.<GroundDTO>
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:GroundDTO = null;
         var _loc4_:Object = null;
         var _loc2_:Vector.<GroundDTO> = new Vector.<GroundDTO>();
         for each(_loc4_ in param1)
         {
            _loc3_ = VoComposer.getGroundgVo(_loc4_,this._configProxy);
            if(!(_loc8_ && Boolean(_loc2_)))
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function getBridgeVo() : BridgeFieldObjectVo
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:BridgeFieldObjectVo = new BridgeFieldObjectVo();
         §§push(this.featureProxy.isFeatureEnabled(ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH));
         if(_loc6_ || Boolean(_loc3_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc6_)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr0057:
                     _loc1_.state = PlayfieldSwitchFieldObjectVo.STATE_DONE;
                     if(_loc5_ && _loc2_)
                     {
                     }
                  }
               }
               else
               {
                  addr007b:
                  if(this._questProxy.bridgeRepairQuestActive)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        _loc1_.state = PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS;
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else
                  {
                     _loc1_.state = PlayfieldSwitchFieldObjectVo.STATE_BLOCKED;
                  }
               }
               var _loc3_:Rectangle = new Rectangle(0,0,1,1);
               §§push(this.config.gfxId);
               if(_loc6_)
               {
                  var _loc4_:* = §§pop();
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     §§push(HorizionSettingsVo.CITY_PLAYFIELD_GFXID);
                     if(_loc6_ || Boolean(_loc1_))
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 addr0196:
                                 §§push(0);
                                 if(_loc6_ || Boolean(_loc3_))
                                 {
                                 }
                              }
                              else
                              {
                                 addr01c3:
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                 }
                              }
                              addr01dd:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc1_.currentPlayfieldId = this.config.id;
                                    if(!(_loc5_ && Boolean(_loc1_)))
                                    {
                                       _loc3_.x = 26;
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          _loc3_.y = 44;
                                          if(_loc5_ && Boolean(_loc3_))
                                          {
                                             addr0125:
                                             _loc3_.x = 4;
                                             if(_loc5_ && Boolean(_loc3_))
                                             {
                                                break;
                                             }
                                             addr0138:
                                             _loc3_.y = 1;
                                             if(!(_loc6_ || Boolean(_loc3_)))
                                             {
                                                break;
                                             }
                                          }
                                          addr01f1:
                                          _loc1_.matrixCoordinates = _loc3_;
                                          break;
                                       }
                                    }
                                    §§goto(addr0138);
                                 case 1:
                                    _loc1_.currentPlayfieldId = this.config.id;
                                    if(!(_loc6_ || Boolean(_loc3_)))
                                    {
                                       break;
                                    }
                                    §§goto(addr0125);
                                    break;
                                 default:
                                    §§goto(addr01f1);
                              }
                              return _loc1_;
                              addr01db:
                           }
                           else
                           {
                              addr01bf:
                              addr01bd:
                              if(HorizionSettingsVo.COASTAL_PLAYFIELD_GFXID === _loc4_)
                              {
                                 §§goto(addr01c3);
                              }
                              else
                              {
                                 §§push(2);
                              }
                              §§goto(addr01db);
                           }
                           §§goto(addr01c3);
                        }
                        §§goto(addr01bf);
                     }
                     §§goto(addr01bd);
                  }
                  §§goto(addr0196);
               }
               §§goto(addr01dd);
            }
            §§goto(addr007b);
         }
         §§goto(addr0057);
      }
      
      public function getPlayfieldConfigById(param1:uint) : ConfigPlayfieldDTO
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigPlayfieldDTO = null;
         for each(_loc2_ in this._configProxy.config.playfields)
         {
            if(_loc6_ || Boolean(this))
            {
               if(_loc2_.id == param1)
               {
                  if(_loc6_ || Boolean(param1))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function getGroundTypeByCoordinates(param1:Point) : String
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc4_:ConfigGroundRestrictionDTO = null;
         var _loc5_:ConfigGroundRestrictionShapeDTO = null;
         var _loc6_:Array = null;
         var _loc7_:ConfigGroundRestrictionShapePointDTO = null;
         var _loc8_:Polygon = null;
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:Dictionary = _loc2_.getRestrictions() as Dictionary;
         for each(_loc4_ in _loc3_)
         {
            if(!(_loc15_ && Boolean(param1)))
            {
               var _loc11_:int = 0;
               if(_loc16_ || Boolean(_loc3_))
               {
                  for each(_loc5_ in _loc4_.configGroundRestrictionShapes)
                  {
                     _loc6_ = new Array();
                     if(!(_loc15_ && Boolean(this)))
                     {
                        var _loc13_:int = 0;
                        if(_loc16_ || Boolean(this))
                        {
                           for each(_loc7_ in _loc5_.shapePoints)
                           {
                              if(!(_loc15_ && Boolean(_loc2_)))
                              {
                                 _loc6_.push(_loc7_);
                              }
                           }
                        }
                        if(!_loc15_)
                        {
                           _loc6_.sortOn(["shapePosition"],Array.NUMERIC);
                        }
                     }
                     _loc8_ = new Polygon(_loc6_);
                     §§push(_loc8_.containsPoint(param1.x,param1.y));
                     if(!_loc15_)
                     {
                        §§push(§§pop());
                        if(!(_loc15_ && Boolean(this)))
                        {
                           var _temp_9:* = §§pop();
                           §§push(_temp_9);
                           if(_temp_9)
                           {
                              if(_loc16_ || Boolean(_loc3_))
                              {
                                 §§pop();
                                 if(_loc16_)
                                 {
                                    addr017f:
                                    if(_loc4_.playfieldId != this.config.id)
                                    {
                                       continue;
                                    }
                                    if(!_loc16_)
                                    {
                                       continue;
                                    }
                                 }
                                 return _loc4_.groundType;
                              }
                           }
                        }
                     }
                     §§goto(addr017f);
                  }
               }
            }
         }
         return NO_TYPE_OF_GROUND;
      }
   }
}

