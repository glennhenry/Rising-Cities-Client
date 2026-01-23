package net.bigpoint.cityrama.view.field
{
   import as3isolib.display.IsoGroup;
   import as3isolib.display.scene.IsoScene;
   import as3isolib.graphics.SolidColorFill;
   import as3isolib.graphics.Stroke;
   import com.greensock.TweenMax;
   import flash.geom.*;
   import net.bigpoint.cityrama.constants.*;
   import net.bigpoint.cityrama.model.*;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.*;
   import net.bigpoint.cityrama.model.field.interfaces.IBillboardObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ClientFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.game.*;
   import net.bigpoint.cityrama.model.preloader.*;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigInitialPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.urbies.*;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ground.ui.components.BgPrimitive;
   import net.bigpoint.cityrama.view.field.ground.ui.components.BuffCoverageGridView;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.*;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.*;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.field3d.interfaces.*;
   import net.bigpoint.util.*;
   import net.bigpoint.util.as3isolib.SortedIsoGroup;
   import org.puremvc.as3.interfaces.*;
   import org.puremvc.as3.patterns.mediator.*;
   
   public class FieldMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FieldMediator";
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _urbiesProxy:UrbiesLifeProxy;
      
      private var _playfieldExpansionsProxy:PlayfieldExpansionsProxy;
      
      private var _playFieldHighlightedObjectsProxy:PlayFieldHighlightedObjectsProxy;
      
      private var _ePr:EventProxy;
      
      private var _buildingFactory:GameObjectFactory;
      
      private var _billboardGroup:SortedIsoGroup;
      
      private var _buffCoverageGridView:BuffCoverageGridView;
      
      private var _securityGradeHeatMapGroup:IsoGroup;
      
      public function FieldMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._urbiesProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         this._playfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         this._playFieldHighlightedObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
         this._timerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc3_:FilePreloadServiceProxy = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
         var _loc4_:FileRuntimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
         this._buildingFactory = new GameObjectFactory(_loc3_.service,_loc4_.service,this._gameConfigProxy.config.tags);
         UrbieFactory.init(_loc3_.service,_loc4_.service);
         this.buildField();
      }
      
      private function buildField() : void
      {
         this._buffCoverageGridView = new BuffCoverageGridView();
         this._buffCoverageGridView.setSize(1,1,0);
         this._buffCoverageGridView.container.visible = false;
         this._billboardGroup = new SortedIsoGroup(this._playfieldProxy.fieldSize);
         this._billboardGroup.container.mouseEnabled = false;
         this.isoScene.addChild(this._billboardGroup);
         this.isoScene.addChild(this._buffCoverageGridView);
         if(this._securityGradeHeatMapGroup == null)
         {
            this._securityGradeHeatMapGroup = new IsoGroup();
         }
         this._securityGradeHeatMapGroup.container.mouseChildren = false;
         this._securityGradeHeatMapGroup.container.mouseEnabled = false;
         this.isoScene.addChild(this._securityGradeHeatMapGroup);
      }
      
      public function resetGroups() : void
      {
         this._billboardGroup.removeAllChildren();
         this.isoScene.removeChild(this._billboardGroup);
         this._buffCoverageGridView.removeAllChildren();
         this.isoScene.removeChild(this._buffCoverageGridView);
         this._securityGradeHeatMapGroup.removeAllChildren();
         this.isoScene.removeChild(this._securityGradeHeatMapGroup);
         this.buildField();
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.RENDER_TICK,ApplicationNotificationConstants.SHOW_NEED_ICONS,ApplicationNotificationConstants.HIDE_NEED_ICONS,ApplicationNotificationConstants.SHOW_ALL_ICONS,ApplicationNotificationConstants.SHOW_IMPROVEMENT_ICONS,ApplicationNotificationConstants.HIDE_IMPROVEMENT_ICONS,ApplicationNotificationConstants.HIDE_ALL_ICONS,ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_SHOPS_FOR_NEEDS,ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_ACTIVATED,ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM,ApplicationNotificationConstants.FIELD_GENERATED,ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY
         ,ApplicationNotificationConstants.FIELD_GENERATE_EXTENSIONS,ApplicationNotificationConstants.QUEST_STATE_CHANGED,ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED];
      }
      
      private function addBillboard(param1:BillboardObjectVo) : IObject3D
      {
         var _loc2_:IObject3D = null;
         var _loc3_:ExpansionFieldObject = null;
         var _loc4_:ExpansionFieldObjectVo = null;
         var _loc5_:Boolean = false;
         var _loc6_:ConfigPlayfieldItemDTO = null;
         var _loc7_:BillboardObject = null;
         var _loc8_:IGameObjectVo = null;
         var _loc9_:Cuboid = null;
         var _loc10_:ConfigInitialPlayfieldItemDTO = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:uint = 0;
         var _loc13_:String = null;
         if(param1 is BoulderObjectVo)
         {
            if((param1 as BoulderObjectVo).isEventBoulder)
            {
               _loc2_ = this.buildingFactory.getBillboardObject(param1 as IBillboardObjectVo,this.eventProxy);
            }
         }
         if(!_loc2_)
         {
            _loc2_ = this.buildingFactory.getBillboardObject(param1 as IBillboardObjectVo);
         }
         _loc2_.setSize((param1 as BillboardObjectVo).matrix3dCoordinates.width * this._playfieldProxy.tileSize,(param1 as BillboardObjectVo).matrix3dCoordinates.height * this._playfieldProxy.tileSize,1);
         if(_loc2_ is ExpansionFieldObject)
         {
            _loc2_.container.mouseChildren = false;
            _loc3_ = ExpansionFieldObject(_loc2_);
            _loc4_ = _loc3_.billboardObjectVo as ExpansionFieldObjectVo;
            _loc5_ = this._playfieldExpansionsProxy.isBuyableExpansions(_loc4_.configPlayfieldItemVo.id);
            _loc4_.configOrigin = this._playfieldExpansionsProxy.getconfigExpansion(_loc4_.configPlayfieldItemVo.id);
            _loc3_.enableMouseOver = _loc5_;
            _loc3_.moveTo(_loc3_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc3_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
            this._billboardGroup.addChild(_loc3_ as BillboardObject);
            _loc4_.rollOverRect.connectWith(_loc3_);
            for each(_loc10_ in _loc4_.configOrigin.initialPlayfieldItems)
            {
               _loc6_ = this._gameConfigProxy.config.items[_loc10_.configId];
               _loc9_ = new Cuboid(_loc10_.xPos,_loc10_.yPos,VectorUtilities.getMinValue(_loc6_.zLevels),_loc6_.sizeX,_loc6_.sizeY,_loc6_.zLevels.length);
               _loc8_ = ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc6_,_loc9_,this._timerProxy,this._gameConfigProxy,this._playfieldProxy);
               (_loc8_ as BillboardObjectVo).showFinalAsset = true;
               (_loc8_ as BillboardObjectVo).hideIconsForMoveMode = true;
               (_loc8_ as BillboardObjectVo).isConnectedToStreet = true;
               (_loc8_ as BillboardObjectVo).currentLevel = _loc6_.upgradeLevel + 1;
               (_loc8_ as BillboardObjectVo).isExpansionObject = true;
               (_loc8_ as BillboardObjectVo).expansionObject = _loc2_ as ExpansionFieldObject;
               _loc7_ = this._buildingFactory.getBillboardObject(_loc8_ as BillboardObjectVo);
               this._playfieldObjectsProxy.addGameObjectByData(_loc8_);
               (_loc7_ as IEstablishedManagerImplementation).invalidateEstablishedManager();
               _loc3_.expansionFieldObjectVo.temporaryAdded.push(_loc8_);
            }
         }
         else
         {
            _loc11_ = BillboardObject(_loc2_);
            _loc11_.setSize((param1 as BillboardObjectVo).matrix3dCoordinates.width * this._playfieldProxy.tileSize,(param1 as BillboardObjectVo).matrix3dCoordinates.height * this._playfieldProxy.tileSize,1);
            _loc11_.moveTo(_loc11_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc11_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
            if(_loc11_.billboardObjectVo.isExpansionObject)
            {
               _loc13_ = this._playfieldProxy.getGroundTypeByCoordinates(new Point(_loc11_.billboardObjectVo.matrix3dCoordinates.x,_loc11_.billboardObjectVo.matrix3dCoordinates.y));
               switch(_loc13_)
               {
                  default:
                  case ServerRestrictionConstants.BUILDINGLAND:
                     _loc12_ = 6984483;
                     break;
                  case ServerRestrictionConstants.SNOW:
                     _loc12_ = 12309449;
                     break;
                  case ServerRestrictionConstants.MOUNTAIN:
                     _loc12_ = 6321253;
               }
               TweenMax.to(_loc11_.presentation,0,{"colorMatrixFilter":{"saturation":0}});
               TweenMax.to(_loc11_.presentation,0,{"colorTransform":{
                  "tint":_loc12_,
                  "tintAmount":0.75
               }});
            }
            this._billboardGroup.addChild(_loc2_);
         }
         return _loc2_;
      }
      
      private function addClientObject(param1:ClientFieldObjectVo) : IObject3D
      {
         var _loc2_:ClientFieldObject = null;
         _loc2_ = this.buildingFactory.getClientFieldObject(param1);
         _loc2_.setSize(_loc2_.fieldMatrixObject3dVo.matrixCoordinates.width * this._playfieldProxy.tileSize,_loc2_.fieldMatrixObject3dVo.matrixCoordinates.height * this._playfieldProxy.tileSize,1);
         _loc2_.moveTo(_loc2_.fieldMatrixObject3dVo.matrixCoordinates.x * this._playfieldProxy.tileSize,_loc2_.fieldMatrixObject3dVo.matrixCoordinates.y * this._playfieldProxy.tileSize,1);
         this._billboardGroup.addChild(_loc2_);
         return _loc2_;
      }
      
      private function addUrbie(param1:UrbieLifeVo) : IObject3D
      {
         var _loc2_:IObject3D = null;
         var _loc3_:UrbieLifeVo = param1 as UrbieLifeVo;
         _loc2_ = UrbieFactory.instance.getUrbie(param1 as UrbieLifeVo);
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc4_:UrbieObject = UrbieObject(_loc2_);
         if(_loc4_.urbieLifeVo.config.id.split("_bottom").length < 2 && _loc4_.urbieLifeVo.config.id.split("_top").length < 2)
         {
            _loc4_.setSize(this._playfieldProxy.tileSize,this._playfieldProxy.tileSize,1);
         }
         else
         {
            _loc4_.setSize(this._playfieldProxy.tileSize / 2,this._playfieldProxy.tileSize / 2,1);
         }
         _loc4_.isAnimated = false;
         this._urbiesProxy.urbieObjectDictionary[_loc3_.id] = _loc4_;
         this._billboardGroup.addChild(_loc4_);
         return _loc2_;
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:Vector.<PlayfieldSwitchFieldObject> = null;
         var _loc3_:IObject3dVo = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:BillboardObjectVo = null;
         var _loc7_:BillboardObject = null;
         var _loc8_:Cuboid = null;
         var _loc9_:BillboardObjectVo = null;
         var _loc10_:Rectangle = null;
         var _loc11_:Object = null;
         var _loc12_:BillboardObjectVo = null;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:PlayfieldSwitchFieldObject = null;
         var _loc17_:IObject3D = null;
         var _loc18_:BillboardObject = null;
         var _loc19_:BillboardObject = null;
         var _loc20_:ExpansionFieldObject = null;
         var _loc21_:UrbieObject = null;
         var _loc22_:SoundProxy = null;
         var _loc23_:IObject3D = null;
         var _loc24_:BillboardObject = null;
         var _loc25_:IPlaneObject = null;
         var _loc26_:BillboardObject = null;
         var _loc27_:ShopFieldObjectVo = null;
         var _loc28_:IEmergencyInfrastructureVO = null;
         var _loc29_:ConfigSecurityGradeDTO = null;
         var _loc30_:BillboardObject = null;
         var _loc31_:PlayfieldSwitchFieldObject = null;
         var _loc32_:BillboardObject = null;
         var _loc33_:PlayfieldSwitchFieldObject = null;
         var _loc34_:BillboardObject = null;
         var _loc35_:BillboardObject = null;
         var _loc36_:ResidentialFieldObject = null;
         var _loc37_:ShopFieldObject = null;
         var _loc38_:ResidentialFieldObject = null;
         var _loc39_:ShopFieldObject = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED:
            case ApplicationNotificationConstants.QUEST_STATE_CHANGED:
               _loc2_ = this._playfieldObjectsProxy.playfieldSwitchObjects;
               for each(_loc16_ in _loc2_)
               {
                  _loc16_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc16_.playfieldSwitchFieldObjectVo);
               }
               break;
            case ApplicationNotificationConstants.FIELD_GENERATED:
               this.buildValidPlayfieldExpansions();
               sendNotification(ApplicationNotificationConstants.RENEW_EXPANSION_SALE_MARKER);
               break;
            case ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM:
               _loc3_ = IObject3dVo(param1.getBody());
               if(_loc3_ != null)
               {
                  if(_loc3_ is BillboardObjectVo)
                  {
                     _loc17_ = this.addBillboard(_loc3_ as BillboardObjectVo);
                  }
                  else if(_loc3_ is UrbieLifeVo)
                  {
                     _loc17_ = this.addUrbie(_loc3_ as UrbieLifeVo);
                     if(_loc17_ == null)
                     {
                        return;
                     }
                  }
                  else if(_loc3_ is ClientFieldObjectVo)
                  {
                     _loc17_ = this.addClientObject(_loc3_ as ClientFieldObjectVo);
                  }
                  this._playfieldObjectsProxy.addObjectToObjectList(_loc17_);
               }
               break;
            case ApplicationNotificationConstants.FIELD_ADD_TEMPORARY:
               if(param1.getBody() is BillboardObject)
               {
                  _loc18_ = param1.getBody() as BillboardObject;
                  _loc18_.presentation.visible = false;
                  this._billboardGroup.addChild(_loc18_);
               }
               break;
            case ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM:
               if(param1.getBody() is BillboardObject && !(param1.getBody() is PlaneObject))
               {
                  _loc19_ = param1.getBody() as BillboardObject;
                  this._billboardGroup.removeChild(_loc19_);
                  this._playfieldObjectsProxy.removeObjectFromObjectList(_loc19_);
                  if(param1.getBody() is ExpansionFieldObject)
                  {
                     for each(_loc20_ in this._playfieldObjectsProxy.expansionList)
                     {
                        _loc20_.enableMouseOver = this._playfieldExpansionsProxy.isBuyableExpansions(_loc20_.expansionFieldObjectVo.configPlayfieldItemVo.id);
                     }
                  }
               }
               if(param1.getBody() is UrbieObject)
               {
                  _loc21_ = param1.getBody() as UrbieObject;
                  _loc22_ = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                  _loc22_.stopEmergencyCitizenSoundByCitizenID(_loc21_.urbieLifeVo.config.citizenID);
                  this._urbiesProxy.urbieObjectDictionary[_loc21_.urbieLifeVo.id] = null;
                  delete this._urbiesProxy.urbieObjectDictionary[_loc21_.urbieLifeVo.id];
                  this._playfieldObjectsProxy.removeObjectFromObjectList(_loc21_);
                  this._billboardGroup.removeChild(_loc21_);
                  RandomUtilities.cleanRemoveChild(_loc21_.presentation);
                  _loc21_.removeAllListeners();
                  _loc21_.destroy();
               }
               break;
            case ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY:
               if(param1.getBody() is IObject3D)
               {
                  _loc23_ = param1.getBody() as IObject3D;
                  this._billboardGroup.removeChild(_loc23_);
               }
               break;
            case ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION:
               if(param1.getBody() is BillboardObject)
               {
                  _loc24_ = param1.getBody() as BillboardObject;
                  _loc24_.moveTo(_loc24_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc24_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,0);
                  break;
               }
               if(param1.getBody() is IPlaneObject)
               {
                  _loc25_ = param1.getBody() as IPlaneObject;
                  _loc25_.moveTo(_loc25_.objectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc25_.objectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,0);
               }
               break;
            case ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM:
               if(param1.getBody() is BillboardObject)
               {
                  _loc26_ = param1.getBody() as BillboardObject;
                  _loc26_.moveTo(_loc26_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc26_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
                  _loc26_.presentation.visible = true;
               }
               break;
            case ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED:
               _loc4_ = Boolean(param1.getBody());
               _loc5_ = this._buffCoverageGridView.container.visible;
               this._buffCoverageGridView.container.visible = _loc4_;
               if(_loc5_ == true)
               {
                  if(this._playFieldHighlightedObjectsProxy == null)
                  {
                     this._playFieldHighlightedObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
                  }
               }
               this._playFieldHighlightedObjectsProxy.resetHighlightedShops();
               break;
            case ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_SHOPS_FOR_NEEDS:
               _loc6_ = BillboardObjectVo(param1.getBody());
               this._playFieldHighlightedObjectsProxy.objectVothatMoves = _loc6_;
               this._playFieldHighlightedObjectsProxy.findAndHighlightShops(_loc6_.matrix3dCoordinates);
               break;
            case ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_ACTIVATED:
               _loc7_ = BillboardObject(param1.getBody());
               _loc8_ = _loc7_.billboardObjectVo.matrix3dCoordinates.clone() as Cuboid;
               _loc8_.width += 2;
               _loc8_.height += 2;
               --_loc8_.x;
               --_loc8_.y;
               _loc7_.billboardObjectVo.isConnectedToStreet = this._playfieldObjectsProxy.iPlaneObjectVosByCuboid(_loc8_).length > 0;
               _loc7_.invalidateIconStateManager();
               break;
            case ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE:
               _loc9_ = BillboardObjectVo(param1.getBody());
               if(_loc9_ is ShopFieldObjectVo)
               {
                  _loc27_ = ShopFieldObjectVo(param1.getBody());
                  _loc10_ = _loc27_.satisfyRange;
               }
               else
               {
                  if(!(_loc9_ is DecorationFieldObjectVo || _loc9_ is InfrastructureBuildingFieldObjectVo))
                  {
                     return;
                  }
                  _loc10_ = new Rectangle(0,0,0,0);
                  if(_loc9_ is IEmergencyInfrastructureVO)
                  {
                     _loc28_ = _loc9_ as IEmergencyInfrastructureVO;
                     for each(_loc29_ in _loc28_.listOfGrades)
                     {
                        if(_loc29_.rangeX * 2 + _loc9_.configPlayfieldItemVo.sizeX > _loc10_.width)
                        {
                           _loc10_.width = _loc29_.rangeX * 2 + _loc9_.configPlayfieldItemVo.sizeX;
                        }
                        if(_loc29_.rangeY * 2 + _loc9_.configPlayfieldItemVo.sizeY > _loc10_.height)
                        {
                           _loc10_.height = _loc29_.rangeY * 2 + _loc9_.configPlayfieldItemVo.sizeY;
                        }
                     }
                  }
               }
               if(_loc10_.width == 0 || _loc10_.height == 0)
               {
                  this._buffCoverageGridView.container.visible = false;
                  this._playFieldHighlightedObjectsProxy.resetHighlight();
                  return;
               }
               _loc10_.x = _loc9_.matrixCoordinates.x - (_loc10_.width - _loc9_.configPlayfieldItemVo.sizeX) / 2;
               _loc10_.y = _loc9_.matrixCoordinates.y - (_loc10_.height - _loc9_.configPlayfieldItemVo.sizeY) / 2;
               this._buffCoverageGridView.container.visible = true;
               this._buffCoverageGridView.setSize(_loc10_.width * this._playfieldProxy.tileSize,_loc10_.height * this._playfieldProxy.tileSize,0);
               this._buffCoverageGridView.moveTo(_loc10_.x * this._playfieldProxy.tileSize,_loc10_.y * this._playfieldProxy.tileSize,1);
               if(this._playFieldHighlightedObjectsProxy == null)
               {
                  this._playFieldHighlightedObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
               }
               this._playFieldHighlightedObjectsProxy.objectVothatMoves = _loc9_;
               if(_loc9_ is ShopFieldObjectVo)
               {
                  this._playFieldHighlightedObjectsProxy.findAndHighlightBuildings(_loc10_);
                  break;
               }
               if(_loc9_ is IEmergencyInfrastructureVO)
               {
                  this._playFieldHighlightedObjectsProxy.findAndHighlightEmergency(_loc10_);
               }
               break;
            case ApplicationNotificationConstants.HIDE_ALL_ICONS:
               for each(_loc30_ in this._playfieldObjectsProxy.billboardList)
               {
                  _loc30_.iconVisibility = false;
               }
               for each(_loc31_ in this._playfieldObjectsProxy.playfieldSwitchObjects)
               {
                  _loc31_.iconVisibility = false;
               }
               break;
            case ApplicationNotificationConstants.SHOW_ALL_ICONS:
               for each(_loc32_ in this._playfieldObjectsProxy.billboardList)
               {
                  _loc32_.iconVisibility = true;
               }
               for each(_loc33_ in this._playfieldObjectsProxy.playfieldSwitchObjects)
               {
                  _loc33_.iconVisibility = true;
               }
               break;
            case ApplicationNotificationConstants.SHOW_IMPROVEMENT_ICONS:
               for each(_loc34_ in this._playfieldObjectsProxy.billboardList)
               {
                  _loc34_.billboardObjectVo.currentApplicationMode = ApplicationModeProxy.MODE_IMPROVEMENT;
                  _loc34_.invalidateIconStateManager();
               }
               break;
            case ApplicationNotificationConstants.HIDE_IMPROVEMENT_ICONS:
               for each(_loc35_ in this._playfieldObjectsProxy.billboardList)
               {
                  _loc35_.billboardObjectVo.currentApplicationMode = "";
                  _loc35_.iconVisibility = false;
               }
               break;
            case ApplicationNotificationConstants.SHOW_NEED_ICONS:
               _loc11_ = Object(param1.getBody());
               _loc12_ = _loc11_.vo;
               _loc13_ = Boolean(_loc11_.rollOver);
               if(_loc12_ != null)
               {
                  if(_loc12_ is ShopFieldObjectVo)
                  {
                     for each(_loc36_ in this._playfieldObjectsProxy.residentialList)
                     {
                        _loc36_.residentialFieldObjectVo.setHasThisNeed(_loc12_.configPlayfieldItemVo.id,_loc13_);
                        _loc36_.invalidateIconStateManager();
                     }
                     break;
                  }
                  if(_loc12_ is ResidentialFieldObjectVo)
                  {
                     for each(_loc37_ in this._playfieldObjectsProxy.needShopList)
                     {
                        _loc37_.shopFieldObjectVo.setFulfillsThisNeed(_loc12_ as ResidentialFieldObjectVo,_loc13_);
                        _loc37_.invalidateIconStateManager();
                     }
                  }
               }
               break;
            case ApplicationNotificationConstants.HIDE_NEED_ICONS:
               _loc14_ = param1.getBody() as Boolean;
               if(_loc14_)
               {
                  for each(_loc38_ in this._playfieldObjectsProxy.residentialList)
                  {
                     _loc38_.residentialFieldObjectVo.setHasThisNeed();
                     _loc38_.invalidateIconStateManager();
                  }
                  break;
               }
               for each(_loc39_ in this._playfieldObjectsProxy.needShopList)
               {
                  _loc39_.shopFieldObjectVo.setFulfillsThisNeed();
                  _loc39_.invalidateIconStateManager();
               }
               break;
            case ApplicationNotificationConstants.RENDER_TICK:
               _loc15_ = true;
               if(_loc15_)
               {
                  this._billboardGroup.sortChildren();
                  this.isoScene.render(true);
               }
         }
      }
      
      private function buildValidPlayfieldExpansions() : void
      {
         var _loc2_:ExpansionFieldObjectVo = null;
         var _loc3_:BgPrimitive = null;
         var _loc4_:IGameObjectVo = null;
         var _loc5_:Cuboid = null;
         var _loc1_:Vector.<ExpansionFieldObjectVo> = this._playfieldExpansionsProxy.validExpansionsInactive;
         for each(_loc2_ in _loc1_)
         {
            _loc3_ = new BgPrimitive();
            _loc4_ = ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc2_.config,_loc2_.dimensions,this._timerProxy,this._gameConfigProxy,this._playfieldProxy);
            _loc5_ = _loc4_.matrix3dCoordinates as Cuboid;
            _loc3_.setSize(_loc5_.width * this._playfieldProxy.tileSize,_loc5_.height * this._playfieldProxy.tileSize,0);
            _loc3_.moveTo(_loc5_.x * this._playfieldProxy.tileSize,_loc5_.y * this._playfieldProxy.tileSize,0);
            _loc3_.strokes = [new Stroke(0,0,0)];
            _loc3_.fills = [new SolidColorFill(1466372,0.2)];
            ExpansionFieldObjectVo(_loc4_).rollOverRect = _loc3_;
            this._playfieldObjectsProxy.addGameObjectByData(_loc4_);
            sendNotification(ApplicationNotificationConstants.GENERATE_EXPANSION_GROUND,_loc3_);
         }
      }
      
      public function get isoScene() : IsoScene
      {
         return viewComponent as IsoScene;
      }
      
      public function get buildingFactory() : GameObjectFactory
      {
         return this._buildingFactory;
      }
      
      private function get eventProxy() : EventProxy
      {
         if(!this._ePr)
         {
            this._ePr = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         }
         return this._ePr;
      }
      
      public function get securityGradeHeatMapGroup() : IsoGroup
      {
         return this._securityGradeHeatMapGroup;
      }
   }
}

