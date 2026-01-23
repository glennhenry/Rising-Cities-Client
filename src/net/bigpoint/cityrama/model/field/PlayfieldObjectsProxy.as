package net.bigpoint.cityrama.model.field
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.StaticWalker;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.cinema.CinemaProxy;
   import net.bigpoint.cityrama.model.common.ArrayMatrix3D;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.StreetObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ClientFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.SquareObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.StreetObject;
   import net.bigpoint.cityrama.view.field.ui.components.InteractiveObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ActivatorFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.event.BuildingObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BridgeFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PlayfieldSwitchFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IGameObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.field3d.event.Object3dEvent;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import net.bigpoint.field3d.interfaces.IObject3dVo;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayfieldObjectsProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "PlayfieldObjectsProxy";
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _planeProxy:PlaneProxy;
      
      private var _playfieldInteractiveProxy:PlayfieldInteractiveProxy;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _needMatrixProxy:NeedMatrixProxy;
      
      private var _pathWalkProxy:PathWalkProxy;
      
      private var _ePro:EventProxy;
      
      private var _cP:CinemaProxy;
      
      private var _objectVosMatrix:ArrayMatrix3D;
      
      private var _object3DList:Vector.<IObject3D>;
      
      private var _interactiveList:Vector.<IInteraction>;
      
      private var _moveableList:Vector.<IGameObject>;
      
      private var _timerList:Vector.<ITimerInterest>;
      
      private var _productionBuildingList:Vector.<ProductionFieldObject>;
      
      private var _billboardList:Vector.<BillboardObject>;
      
      private var _expansionList:Vector.<ExpansionFieldObject>;
      
      private var _boulderList:Vector.<BoulderFieldObject>;
      
      private var _decorationList:Vector.<DecorationFieldObject>;
      
      private var _needShopList:Vector.<ShopFieldObject>;
      
      private var _residentialList:Vector.<ResidentialFieldObject>;
      
      private var _playfieldSwitchObjectList:Vector.<PlayfieldSwitchFieldObject>;
      
      private var _streetObjectList:Vector.<StreetObject>;
      
      private var _squareObjectList:Vector.<SquareObject>;
      
      private var _groundObjectList:Vector.<PlaneObject>;
      
      private var _pierObjectList:Vector.<PierObject>;
      
      private var _infrastructureBuildingList:Vector.<InfrastructureBuildingFieldObject>;
      
      private var _infrastructureInterfaceObjectsList:Vector.<IEmergencyInfrastructure>;
      
      private var _clientFieldObjectsList:Vector.<ClientFieldObject>;
      
      private var _activatorFieldObjectList:Vector.<ActivatorFieldObject>;
      
      private var _bridgeFieldObject:BridgeFieldObject;
      
      private var _cinemaFieldObject:CinemaFieldObject;
      
      public function PlayfieldObjectsProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         this._playfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         this._needMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
      }
      
      public static function addIconOffsets(param1:BillboardObjectVo, param2:FilePreloadServiceProxy) : void
      {
         var _loc8_:XML = null;
         var _loc3_:XML = new XML(param2.service.getXML("iconOffsetXML"));
         var _loc4_:Point = new Point();
         var _loc5_:Point = new Point();
         var _loc6_:Point = new Point();
         var _loc7_:Point = new Point();
         var _loc9_:String = String(param1.configPlayfieldItemVo.gfxId);
         if(param1.buildingDTO != null)
         {
            _loc9_ += param1.buildingDTO.buildingLevel + 1;
         }
         else
         {
            _loc9_ += 1;
         }
         var _loc10_:Number = Number(_loc9_);
         if(_loc3_ != "")
         {
            for each(_loc8_ in _loc3_..configItems.configItem)
            {
               if(_loc10_ == Number(_loc8_.@id))
               {
                  _loc4_.x = Number(_loc8_.iconOffsetX.text());
                  _loc4_.y = Number(_loc8_.iconOffsetY.text());
                  _loc5_.x = Number(_loc8_.baseiconOffsetX.text());
                  _loc5_.y = Number(_loc8_.baseiconOffsetY.text());
                  _loc6_.x = Number(_loc8_.constructionIconOffsetX.text());
                  _loc6_.y = Number(_loc8_.constructionIconOffsetY.text());
                  _loc7_.x = Number(_loc8_.placementIconOffsetX.text());
                  _loc7_.y = Number(_loc8_.placementIconOffsetY.text());
                  break;
               }
            }
            param1.iconOffset = _loc4_;
            param1.baseIconOffset = _loc5_;
            param1.constructionIconOffset = _loc6_;
            param1.placementIconOffset = _loc7_;
            return;
         }
         throw new Error("Cannot load iconOffset.xml!");
      }
      
      public function resetModel() : void
      {
         this._object3DList = null;
         this._object3DList = new Vector.<IObject3D>();
         this._interactiveList = new Vector.<IInteraction>();
         this._moveableList = new Vector.<IGameObject>();
         this._timerList = new Vector.<ITimerInterest>();
         this._productionBuildingList = new Vector.<ProductionFieldObject>();
         this._billboardList = new Vector.<BillboardObject>();
         this._expansionList = new Vector.<ExpansionFieldObject>();
         this._boulderList = new Vector.<BoulderFieldObject>();
         this._residentialList = new Vector.<ResidentialFieldObject>();
         this._playfieldSwitchObjectList = new Vector.<PlayfieldSwitchFieldObject>();
         this._decorationList = new Vector.<DecorationFieldObject>();
         this._streetObjectList = new Vector.<StreetObject>();
         this._squareObjectList = new Vector.<SquareObject>();
         this._groundObjectList = new Vector.<PlaneObject>();
         this._pierObjectList = new Vector.<PierObject>();
         this._needShopList = new Vector.<ShopFieldObject>();
         this._clientFieldObjectsList = new Vector.<ClientFieldObject>();
         this._activatorFieldObjectList = new Vector.<ActivatorFieldObject>();
         this._infrastructureBuildingList = new Vector.<InfrastructureBuildingFieldObject>();
         this._infrastructureInterfaceObjectsList = new Vector.<IEmergencyInfrastructure>();
         this._needMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         this._playfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
         this._objectVosMatrix = new ArrayMatrix3D(this._playfieldProxy.fieldSize.x,this._playfieldProxy.fieldSize.y);
      }
      
      public function addGameObjectByData(param1:IGameObjectVo) : void
      {
         if(param1 is BoulderObjectVo)
         {
            if((param1 as BoulderObjectVo).isStreetBoulder)
            {
               this.checkForGroundLock(param1,true);
            }
         }
         this._objectVosMatrix.setObjectByCuboid(param1,param1.matrix3dCoordinates);
         sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,param1);
      }
      
      public function removeGameObjectVofromMatrix(param1:IGameObjectVo) : void
      {
         var _loc3_:StreetObject = null;
         if(param1 is BoulderObjectVo)
         {
            if((param1 as BoulderObjectVo).isStreetBoulder)
            {
               this.checkForGroundLock(param1,false);
            }
         }
         var _loc2_:StreetObject = null;
         for each(_loc3_ in this._streetObjectList)
         {
            if(RandomUtilities.isEqual(param1,_loc3_.streetObjectVo,false))
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         if(_loc2_)
         {
            if(_loc2_.streetObjectVo.configPlayfieldItemVo.driveable && _loc2_.streetObjectVo.configPlayfieldItemVo.walkable)
            {
            }
            if(_loc2_.streetObjectVo.configPlayfieldItemVo.driveable)
            {
            }
            if(_loc2_.streetObjectVo.configPlayfieldItemVo.walkable)
            {
            }
         }
         this._objectVosMatrix.setObjectByCuboid(null,param1.matrix3dCoordinates);
      }
      
      private function checkForGroundLock(param1:IGameObjectVo, param2:Boolean) : void
      {
         var _loc5_:StaticWalker = null;
         var _loc6_:IWalker = null;
         var _loc3_:Cuboid = param1.matrix3dCoordinates.clone() as Cuboid;
         --_loc3_.z;
         var _loc4_:IGameObjectVo = this.getGameObjectByCuboid(_loc3_);
         if((Boolean(_loc4_)) && _loc4_ is PlaneObjectVo)
         {
            (_loc4_ as PlaneObjectVo).userInteractionLocked = param2;
            if(param2)
            {
               _loc5_ = new StaticWalker((param1 as BoulderObjectVo).boulderVo.id.toString(),Terrain.TYPE_ALL_TERRAINS);
               _loc5_.waypoints.push(new IntPoint(param1.matrix3dCoordinates.x,param1.matrix3dCoordinates.y));
               this._pathWalkProxy.addWalker(_loc5_);
            }
            else
            {
               for each(_loc6_ in this._pathWalkProxy.pathwalkManager.walkerContainer.walkers)
               {
                  if(_loc6_.id == (param1 as BoulderObjectVo).boulderVo.id.toString())
                  {
                     this._pathWalkProxy.pathwalkManager.walkerContainer.killWalker(_loc6_);
                  }
               }
            }
         }
      }
      
      public function reAddGameObjVoToMatrix(param1:IGameObjectVo, param2:IInteraction = null) : void
      {
         var _loc3_:StreetObject = null;
         var _loc4_:StreetObject = null;
         this._objectVosMatrix.setObjectByCuboid(param1,param1.matrix3dCoordinates);
         if(param1 is StreetObjectVo)
         {
            _loc3_ = param2 as StreetObject;
            if(_loc3_)
            {
               if(_loc3_.streetObjectVo.configPlayfieldItemVo.driveable && _loc3_.streetObjectVo.configPlayfieldItemVo.walkable)
               {
               }
               if(_loc3_.streetObjectVo.configPlayfieldItemVo.driveable)
               {
               }
               if(_loc3_.streetObjectVo.configPlayfieldItemVo.walkable)
               {
               }
            }
            for each(_loc4_ in this._streetObjectList)
            {
               sendNotification(ApplicationNotificationConstants.GROUND_GENERATE_STREETS_TEXTURES_COMMAND,_loc4_);
            }
         }
      }
      
      public function getGameObjectByCuboid(param1:Cuboid) : IGameObjectVo
      {
         var _loc2_:Object = this._objectVosMatrix.getObjectByCuboid(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_ as IGameObjectVo;
      }
      
      public function getGameObjectsByCuboid(param1:Cuboid) : Vector.<IGameObjectVo>
      {
         var _loc3_:Object = null;
         var _loc2_:Vector.<IGameObjectVo> = new Vector.<IGameObjectVo>();
         for each(_loc3_ in this._objectVosMatrix.getObjectsByCuboid(param1))
         {
            if(_loc3_ is IGameObjectVo)
            {
               _loc2_.push(_loc3_ as IGameObjectVo);
            }
         }
         return _loc2_;
      }
      
      public function getResidentialsByRect(param1:Rectangle) : Vector.<ResidentialFieldObject>
      {
         var _loc3_:Object = null;
         var _loc4_:ResidentialFieldObjectVo = null;
         var _loc5_:ResidentialFieldObject = null;
         var _loc2_:Vector.<ResidentialFieldObject> = new Vector.<ResidentialFieldObject>();
         for each(_loc3_ in this._needMatrixProxy.residentialMatrix.getObjectsByRect(param1))
         {
            _loc4_ = _loc3_ as ResidentialFieldObjectVo;
            if(_loc4_.buildingDTO != null)
            {
               for each(_loc5_ in this._residentialList)
               {
                  if(_loc5_.residentialFieldObjectVo.buildingDTO != null && _loc5_.residentialFieldObjectVo.buildingDTO.id == _loc4_.buildingDTO.id)
                  {
                     _loc2_.push(_loc5_);
                     break;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function getExpansionByRect(param1:Rectangle) : Vector.<ExpansionFieldObject>
      {
         var _loc3_:ExpansionFieldObject = null;
         var _loc2_:Vector.<ExpansionFieldObject> = new Vector.<ExpansionFieldObject>();
         for each(_loc3_ in this._expansionList)
         {
            if(!(param1.x + param1.width <= _loc3_.expansionFieldObjectVo.configOrigin.px || param1.y + param1.height <= _loc3_.expansionFieldObjectVo.configOrigin.py || param1.x >= _loc3_.expansionFieldObjectVo.configOrigin.px + _loc3_.expansionFieldObjectVo.configOrigin.sx || param1.y >= _loc3_.expansionFieldObjectVo.configOrigin.py + _loc3_.expansionFieldObjectVo.configOrigin.sy))
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function getEmergencyableBuildingsByRect(param1:Rectangle) : Vector.<BillboardObject>
      {
         var _loc3_:BillboardObject = null;
         var _loc2_:Vector.<BillboardObject> = new Vector.<BillboardObject>();
         for each(_loc3_ in this._billboardList)
         {
            if(_loc3_.billboardObjectVo.buildingDTO != null)
            {
               if(!(param1.x + param1.width <= _loc3_.billboardObjectVo.matrixCoordinates.x || param1.y + param1.height <= _loc3_.billboardObjectVo.matrixCoordinates.y || param1.x >= _loc3_.billboardObjectVo.matrixCoordinates.x + _loc3_.billboardObjectVo.configPlayfieldItemVo.sizeX || param1.y >= _loc3_.billboardObjectVo.matrixCoordinates.y + _loc3_.billboardObjectVo.configPlayfieldItemVo.sizeY))
               {
                  _loc2_.push(_loc3_);
               }
            }
         }
         return _loc2_;
      }
      
      public function getColBy2DCoordinates(param1:int, param2:int) : Array
      {
         return this._objectVosMatrix.getColBy2DCoordinates(param1,param2);
      }
      
      public function isFree(param1:Cuboid) : Boolean
      {
         return this._objectVosMatrix.getObjectByCuboid(param1) == null;
      }
      
      public function isOwnPosition(param1:Cuboid, param2:Object) : Boolean
      {
         var _loc3_:Object = this._objectVosMatrix.getObjectByCuboid(param1);
         return _loc3_ == param2;
      }
      
      public function iPlaneObjectVosByCuboid(param1:Cuboid) : Vector.<IPlaneObjectVo>
      {
         var _loc4_:Object = null;
         var _loc5_:IPlaneObjectVo = null;
         var _loc6_:Boolean = false;
         var _loc2_:Vector.<IPlaneObjectVo> = new Vector.<IPlaneObjectVo>();
         var _loc3_:Vector.<Object> = this.planeProxy.groundMatrix3d.getObjectsByCuboid(param1);
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = _loc4_ as IPlaneObjectVo;
            if(_loc5_.isConnectedToStreet)
            {
               _loc6_ = true;
               if(param1.right == _loc5_.matrixCoordinates.right && param1.top == _loc5_.matrixCoordinates.top)
               {
                  _loc6_ = false;
               }
               if(param1.right == _loc5_.matrixCoordinates.right && param1.bottom == _loc5_.matrixCoordinates.bottom)
               {
                  _loc6_ = false;
               }
               if(param1.left == _loc5_.matrixCoordinates.left && param1.top == _loc5_.matrixCoordinates.top)
               {
                  _loc6_ = false;
               }
               if(param1.left == _loc5_.matrixCoordinates.left && param1.bottom == _loc5_.matrixCoordinates.bottom)
               {
                  _loc6_ = false;
               }
               if(_loc6_)
               {
                  _loc2_.push(_loc5_);
               }
            }
         }
         return _loc2_;
      }
      
      public function getObjectByVo(param1:IObject3dVo) : IObject3D
      {
         var _loc2_:IObject3D = null;
         for each(_loc2_ in this._object3DList)
         {
            if(_loc2_ != null && _loc2_.fieldObject3dVo == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getFirstNullBillboard() : BillboardObject
      {
         var _loc1_:IObject3D = null;
         for each(_loc1_ in this._object3DList)
         {
            if(_loc1_ is BillboardObject && BillboardObject(_loc1_).billboardObjectVo.buildingDTO == null)
            {
               return BillboardObject(_loc1_);
            }
         }
         return null;
      }
      
      public function getBillboardById(param1:Number) : BillboardObject
      {
         var _loc2_:IObject3D = null;
         var _loc3_:BillboardObject = null;
         for each(_loc2_ in this._object3DList)
         {
            if(_loc2_ is BillboardObject)
            {
               _loc3_ = _loc2_ as BillboardObject;
               if(_loc3_.billboardObjectVo.buildingDTO != null && param1 == _loc3_.billboardObjectVo.buildingDTO.id)
               {
                  return _loc3_;
               }
               if(_loc3_ is DecorationFieldObject)
               {
                  var _loc4_:DecorationFieldObjectVo = DecorationFieldObjectVo(_loc3_.billboardObjectVo);
                  if((_loc4_) && null.decorationVo && null.decorationVo.dto != null)
                  {
                     if(param1 == null.decorationVo.dto.id)
                     {
                        return _loc3_;
                     }
                  }
               }
               if(_loc3_ is BoulderFieldObject)
               {
                  var _loc5_:BoulderObjectVo = BoulderObjectVo(_loc3_.billboardObjectVo);
                  if(param1 == null.boulderVo.id)
                  {
                     return _loc3_;
                  }
               }
            }
         }
         return null;
      }
      
      public function getPlaneObjectByVo(param1:IGameObjectVo) : IPlaneObject
      {
         var _loc2_:StreetObject = null;
         var _loc3_:SquareObject = null;
         var _loc4_:PlaneObject = null;
         var _loc5_:PierObject = null;
         for each(_loc2_ in this._streetObjectList)
         {
            if(_loc2_ != null && _loc2_.streetObjectVo == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc3_ in this._squareObjectList)
         {
            if(_loc3_ != null && _loc3_.squareObjectVo == param1)
            {
               return _loc3_;
            }
         }
         for each(_loc4_ in this._groundObjectList)
         {
            if(_loc4_ != null && _loc4_.planeObjectVo == param1)
            {
               return _loc4_;
            }
         }
         for each(_loc5_ in this._pierObjectList)
         {
            if(_loc5_ != null && _loc5_.objectVo == param1)
            {
               return _loc5_;
            }
         }
         return null;
      }
      
      public function getPlaneObjectById(param1:Number) : IPlaneObject
      {
         var _loc2_:StreetObject = null;
         var _loc3_:SquareObject = null;
         var _loc4_:PlaneObject = null;
         var _loc5_:PierObject = null;
         for each(_loc2_ in this._streetObjectList)
         {
            if(_loc2_.planeObjectVo.groundDTO != null && param1 == _loc2_.planeObjectVo.groundDTO.id)
            {
               return _loc2_ as IPlaneObject;
            }
         }
         for each(_loc3_ in this._squareObjectList)
         {
            if(_loc3_.planeObjectVo.groundDTO != null && param1 == _loc3_.planeObjectVo.groundDTO.id)
            {
               return _loc3_ as IPlaneObject;
            }
         }
         for each(_loc4_ in this._groundObjectList)
         {
            if(_loc4_.planeObjectVo.groundDTO != null && param1 == _loc4_.planeObjectVo.groundDTO.id)
            {
               return _loc2_ as IPlaneObject;
            }
         }
         for each(_loc5_ in this._pierObjectList)
         {
            if(_loc5_.objectVo.groundDTO != null && param1 == _loc5_.objectVo.groundDTO.id)
            {
               return _loc5_ as IPlaneObject;
            }
         }
         return null;
      }
      
      public function get objectList() : Vector.<IObject3D>
      {
         return this._object3DList;
      }
      
      public function addObjectToObjectList(param1:*) : void
      {
         var _loc2_:StreetObject = null;
         var _loc3_:SquareObject = null;
         var _loc4_:PierObject = null;
         var _loc5_:ResidentialFieldObject = null;
         if(param1 is IObject3D)
         {
            this._object3DList.push(param1 as IObject3D);
            this.configureObject3dListener(param1 as IObject3D);
         }
         if(param1 is ClientFieldObject)
         {
            this._clientFieldObjectsList.push(param1);
            if(param1 is BridgeFieldObject)
            {
               this._bridgeFieldObject = param1;
            }
         }
         if(param1 is ITimerInterest)
         {
            this._timerList.push(param1);
         }
         if(param1 is IGameObjectVo)
         {
            if((param1 as IGameObjectVo).configPlayfieldItemVo.moveable)
            {
               this._moveableList.push(param1);
            }
         }
         if(param1 is IInteraction)
         {
            this.configureInteratctiveListener(param1 as IInteraction);
            this._interactiveList.push(param1);
         }
         if(param1 is BillboardObject)
         {
            this.configureBuildingFieldEventsListener(param1 as BillboardObject);
            this._billboardList.push(param1 as BillboardObject);
            if((param1 as BillboardObject).billboardObjectVo.hasEmergency())
            {
               (param1 as BillboardObject).invalidateAnimationSlotManager();
            }
         }
         if(param1 is ProductionFieldObject)
         {
            (param1 as ProductionFieldObject).productionFieldObjectVo.currentEventLocaleId = this.eventProxy.currentRunningEventQuestLocaleId;
            (param1 as ProductionFieldObject).productionFieldObjectVo.currentRunningEventGFXId = this.eventProxy.currentRunningEventQuestGfxId;
            this._productionBuildingList.push(param1 as ProductionFieldObject);
         }
         if(param1 is ExpansionFieldObject)
         {
            this._expansionList.push(param1 as ExpansionFieldObject);
         }
         if(param1 is DecorationFieldObject)
         {
            this._decorationList.push(param1 as DecorationFieldObject);
         }
         if(param1 is MysteryBuildingFieldObject)
         {
            this.configureMysteryBuildingUnwrapEventsListener(param1 as MysteryBuildingFieldObject);
         }
         if(param1 is BoulderFieldObject)
         {
            this._boulderList.push(param1 as BoulderFieldObject);
            this.checkAndSetBoulderOutcome(param1 as BoulderFieldObject);
         }
         if(param1 is StreetObject)
         {
            this.planeProxy.addObject(param1 as PlaneObject);
            _loc2_ = param1 as StreetObject;
            this._streetObjectList.push(_loc2_);
            this._pathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
            if(this._pathWalkProxy)
            {
               if(_loc2_.streetObjectVo.configPlayfieldItemVo.driveable)
               {
                  this._pathWalkProxy.pathwalkManager.terrain.setTileUsable(_loc2_.planeObjectVo.matrix3dCoordinates.x,_loc2_.planeObjectVo.matrix3dCoordinates.y,"driveable");
               }
               if(_loc2_.streetObjectVo.configPlayfieldItemVo.driveable)
               {
                  this._pathWalkProxy.pathwalkManager.terrain.setTileUsable(_loc2_.planeObjectVo.matrix3dCoordinates.x,_loc2_.planeObjectVo.matrix3dCoordinates.y,"walkable");
               }
               this._pathWalkProxy.pathwalkManager.terrain.setTileUsable(_loc2_.planeObjectVo.matrix3dCoordinates.x,_loc2_.planeObjectVo.matrix3dCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
               sendNotification(ApplicationNotificationConstants.GROUND_GENERATE_STREETS_TEXTURES_COMMAND,param1);
            }
         }
         if(param1 is SquareObject)
         {
            this._pathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
            this.planeProxy.addObject(param1 as PlaneObject);
            this._squareObjectList.push(param1 as SquareObject);
            _loc3_ = param1 as SquareObject;
            this._pathWalkProxy.pathwalkManager.terrain.setTileUsable(_loc3_.planeObjectVo.matrix3dCoordinates.x,_loc3_.planeObjectVo.matrix3dCoordinates.y,"walkable");
            this._pathWalkProxy.pathwalkManager.terrain.setTileUsable(_loc3_.planeObjectVo.matrix3dCoordinates.x,_loc3_.planeObjectVo.matrix3dCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
            sendNotification(ApplicationNotificationConstants.GROUND_GENERATE_TEXTURES_COMMAND,param1);
         }
         if(param1 is PierObject)
         {
            this._pathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
            this.planeProxy.addObject(param1 as PierObject);
            _loc4_ = param1 as PierObject;
            this._pierObjectList.push(_loc4_);
            this._pathWalkProxy.pathwalkManager.terrain.setTileUsable(_loc4_.pierObjectVo.matrix3dCoordinates.x,_loc4_.pierObjectVo.matrix3dCoordinates.y,"walkable");
            this._pathWalkProxy.pathwalkManager.terrain.setTileUsable(_loc4_.pierObjectVo.matrix3dCoordinates.x,_loc4_.pierObjectVo.matrix3dCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
         }
         if(param1 is ShopFieldObject)
         {
            this._needMatrixProxy.addShop(param1 as ShopFieldObject);
            this._needShopList.push(param1 as ShopFieldObject);
         }
         if(param1 is ResidentialFieldObject)
         {
            _loc5_ = param1 as ResidentialFieldObject;
            this._needMatrixProxy.addResidential(_loc5_.residentialFieldObjectVo);
            this._residentialList.push(_loc5_);
         }
         if(param1 is PlaneObject && !(param1 is StreetObject) && !(param1 is SquareObject))
         {
            this.planeProxy.addObject(param1 as PlaneObject);
            this._groundObjectList.push(param1 as PlaneObject);
            sendNotification(ApplicationNotificationConstants.GROUND_GENERATE_TEXTURES_COMMAND,param1);
         }
         if(param1 is CitySquareFieldObject)
         {
            sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
         }
         if(param1 is IEmergencyInfrastructure)
         {
            this._infrastructureInterfaceObjectsList.push(param1);
         }
         if(param1 is InfrastructureBuildingFieldObject)
         {
            this._infrastructureBuildingList.push(param1 as InfrastructureBuildingFieldObject);
            sendNotification(ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED);
         }
         if(param1 is ActivatorFieldObject)
         {
            this._activatorFieldObjectList.push(param1);
         }
         if(param1 is PlayfieldSwitchFieldObject)
         {
            this._playfieldSwitchObjectList.push(param1);
         }
         if(param1 is CinemaFieldObject)
         {
            this._cinemaFieldObject = param1 as CinemaFieldObject;
            this._cinemaFieldObject.cinemaFieldObjectVo.maxViews = this.cinemaProxy.maxViews;
            this._cinemaFieldObject.cinemaFieldObjectVo.viewsToday = this.cinemaProxy.videosWatchedToday;
            this._cinemaFieldObject.cinemaFieldObjectVo.disabled = this.cinemaProxy.disabledByAID;
            this._cinemaFieldObject.cinemaFieldObjectVo.inMaintenance = this.cinemaProxy.inMaintenance;
            this._cinemaFieldObject.invalidateIconStateManager();
         }
      }
      
      private function get eventProxy() : EventProxy
      {
         if(this._ePro == null)
         {
            this._ePro = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         }
         return this._ePro;
      }
      
      public function removeObjectFromObjectList(param1:*) : void
      {
         var _loc6_:SquareObject = null;
         if(param1 is IObject3D)
         {
            this._object3DList.splice(this._object3DList.indexOf(param1 as IObject3D),1);
            this.deconfigureObject3dListener(param1 as IObject3D);
         }
         if(param1 is ShopFieldObject)
         {
            this._needMatrixProxy.removeShop(param1 as ShopFieldObject);
         }
         if(param1 is DecorationFieldObject)
         {
            this._decorationList.splice(this._decorationList.indexOf(param1),1);
         }
         if(param1 is ClientFieldObjectVo)
         {
            this._clientFieldObjectsList.splice(this._clientFieldObjectsList.indexOf(param1),1);
            if(param1 is BridgeFieldObject)
            {
               this._bridgeFieldObject = null;
            }
         }
         if(param1 is ProductionFieldObject)
         {
            this._productionBuildingList.splice(this._productionBuildingList.indexOf(param1),1);
         }
         if(param1 is ResidentialFieldObject)
         {
            this._residentialList.splice(this._residentialList.indexOf(param1),1);
            this._needMatrixProxy.removeResidential((param1 as ResidentialFieldObject).residentialFieldObjectVo);
         }
         if(param1 is IGameObject)
         {
            if((param1 as IGameObject).gameObjectVo)
            {
               if((param1 as IGameObject).gameObjectVo.configPlayfieldItemVo)
               {
                  if((param1 as IGameObject).gameObjectVo.configPlayfieldItemVo.moveable)
                  {
                     this._moveableList.splice(this._moveableList.indexOf(param1),1);
                  }
               }
            }
         }
         if(param1 is IInteraction)
         {
            this.deconfigureInteratctiveListener(param1 as IInteraction);
            this._interactiveList.splice(this._interactiveList.indexOf(param1),1);
         }
         if(param1 is BillboardObject)
         {
            this._billboardList.splice(this._billboardList.indexOf(param1),1);
            this.deconfigureBuildingFieldEventsListener(param1 as BillboardObject);
         }
         if(param1 is MysteryBuildingFieldObject)
         {
            this.deconfigureMysteryBuildingUnwrapEventsListener(param1 as MysteryBuildingFieldObject);
         }
         if(param1 is ShopFieldObject)
         {
            this._needShopList.splice(this._needShopList.indexOf(param1),1);
         }
         if(param1 is ExpansionFieldObject)
         {
            this._expansionList.splice(this._expansionList.indexOf(param1),1);
         }
         if(param1 is BoulderFieldObject)
         {
            this._boulderList.splice(this._boulderList.indexOf(param1),1);
         }
         if(param1 is StreetObject)
         {
            this.planeProxy.removeObject(param1 as PlaneObject);
            var _loc2_:StreetObject = this._streetObjectList.splice(this._streetObjectList.indexOf(param1),1)[0];
            if(Boolean(null.streetObjectVo.configPlayfieldItemVo.driveable) && Boolean(null.streetObjectVo.configPlayfieldItemVo.walkable))
            {
            }
            if(!null.streetObjectVo.configPlayfieldItemVo.driveable)
            {
            }
            if(!null.streetObjectVo.configPlayfieldItemVo.walkable)
            {
            }
            var _loc3_:Vector.<StreetObjectVo> = this.getSurroundingStreets(null.streetObjectVo);
            for each(var _loc4_ in null)
            {
               if(_loc4_.groundDTO)
               {
                  var _loc5_:StreetObject = StreetObject(this.getPlaneObjectById(null.groundDTO.id));
                  if(_loc5_ != null)
                  {
                     sendNotification(ApplicationNotificationConstants.GROUND_GENERATE_STREETS_TEXTURES_COMMAND,null);
                  }
               }
            }
         }
         if(param1 is SquareObject)
         {
            _loc6_ = param1 as SquareObject;
            if(_loc6_.squareObjectVo.configPlayfieldItemVo.driveable && _loc6_.squareObjectVo.configPlayfieldItemVo.walkable)
            {
            }
            if(_loc6_.squareObjectVo.configPlayfieldItemVo.driveable)
            {
            }
            if(_loc6_.squareObjectVo.configPlayfieldItemVo.walkable)
            {
            }
            this.planeProxy.removeObject(param1 as PlaneObject);
            this._squareObjectList.splice(this._squareObjectList.indexOf(param1),1);
         }
         if(param1 is PierObject)
         {
            this._pierObjectList.splice(this._pierObjectList.indexOf(param1),1);
         }
         if(param1 is PlaneObject && !(param1 is StreetObject) && !(param1 is SquareObject))
         {
            this.planeProxy.removeObject(param1 as PlaneObject);
            this._groundObjectList.splice(this._groundObjectList.indexOf(param1),1);
         }
         if(param1 is IEmergencyInfrastructure)
         {
            this._infrastructureInterfaceObjectsList.splice(this._infrastructureInterfaceObjectsList.indexOf(param1),1);
         }
         if(param1 is InfrastructureBuildingFieldObject)
         {
            this._infrastructureBuildingList.splice(this._infrastructureBuildingList.indexOf(param1),1);
            sendNotification(ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED);
         }
         if(param1 is ActivatorFieldObject)
         {
            this._activatorFieldObjectList.splice(this._activatorFieldObjectList.indexOf(param1),1);
         }
         if(param1 is CinemaFieldObject)
         {
            this._cinemaFieldObject = null;
         }
      }
      
      private function checkAndSetBoulderOutcome(param1:BoulderFieldObject) : void
      {
         var _loc2_:PhaseDTO = null;
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         if(param1.boulderObjectVo.activePhases.length > 0)
         {
            for each(_loc2_ in param1.boulderObjectVo.activePhases)
            {
               if(_loc2_.config.phaseType == ServerPhaseTypes.DESTRUCTIONPHASE_REMOVE_BOULDER)
               {
                  if(_loc2_.expirationTime > 0)
                  {
                     if(param1.boulderObjectVo.boulderVo.currentOutput)
                     {
                        _loc3_ = new ConfigPhaseDTO(null);
                        _loc3_.listEntryOutputs = param1.boulderObjectVo.boulderVo.currentOutput;
                        for each(_loc4_ in _loc3_.listEntryOutputs)
                        {
                           if(_loc4_.type == ServerOutputConstants.GOOD)
                           {
                              _loc4_.goodConfig = this._gameConfigProxy.config.goods[_loc4_.configId];
                           }
                           else if(_loc4_.type == ServerOutputConstants.RESOURCE)
                           {
                              _loc4_.resourceConfig = this._gameConfigProxy.config.resources[_loc4_.configId];
                           }
                        }
                        param1.boulderObjectVo.informationFloaterPhase = _loc3_;
                        break;
                     }
                     param1.boulderObjectVo.informationFloaterPhase = new ConfigPhaseDTO(null);
                     break;
                  }
               }
            }
         }
         param1.invalidateIconStateManager();
      }
      
      private function configureInteratctiveListener(param1:IInteraction) : void
      {
         param1.addEventListener(InteractiveObjectEvent.ON_INTERACTIVEVALUE_CHECK,this.onInteractiveValueCheck);
         param1.addEventListener(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this.onInteractiveClick);
         param1.addEventListener(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOUT,this.onInteractiveRollOut);
         param1.addEventListener(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOVER,this.onInteractiveRollOver);
      }
      
      private function deconfigureInteratctiveListener(param1:IInteraction) : void
      {
         param1.removeEventListener(InteractiveObjectEvent.ON_INTERACTIVEVALUE_CHECK,this.onInteractiveValueCheck);
         param1.removeEventListener(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this.onInteractiveClick);
         param1.removeEventListener(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOUT,this.onInteractiveRollOut);
         param1.removeEventListener(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOVER,this.onInteractiveRollOver);
      }
      
      private function configureBuildingFieldEventsListener(param1:IInteraction) : void
      {
         param1.addEventListener(BuildingObjectEvent.OFFSET_CHANGED,this.onBuildingOffsetChanged);
      }
      
      private function deconfigureBuildingFieldEventsListener(param1:IInteraction) : void
      {
         param1.removeEventListener(BuildingObjectEvent.OFFSET_CHANGED,this.onBuildingOffsetChanged);
      }
      
      private function configureMysteryBuildingUnwrapEventsListener(param1:MysteryBuildingFieldObject) : void
      {
         param1.addEventListener(BuildingObjectEvent.MYSTERY_UNWRAP_PROGRESS_CHANGED,this.onMysteryBuildingUnwrapChanged);
      }
      
      private function deconfigureMysteryBuildingUnwrapEventsListener(param1:MysteryBuildingFieldObject) : void
      {
         param1.removeEventListener(BuildingObjectEvent.MYSTERY_UNWRAP_PROGRESS_CHANGED,this.onMysteryBuildingUnwrapChanged);
      }
      
      private function configureObject3dListener(param1:IObject3D) : void
      {
         param1.addEventListener(Object3dEvent.ON_POSITION_UPDATE,this.onObject3dPositionUpdate);
      }
      
      private function deconfigureObject3dListener(param1:IObject3D) : void
      {
         param1.removeEventListener(Object3dEvent.ON_POSITION_UPDATE,this.onObject3dPositionUpdate);
      }
      
      private function onInteractiveRollOver(param1:InteractiveObjectEvent) : void
      {
         this._playfieldInteractiveProxy.setRollOverObjectAndEvent(param1.data as IInteraction,param1.iconEvent);
      }
      
      private function onInteractiveRollOut(param1:InteractiveObjectEvent) : void
      {
         this._playfieldInteractiveProxy.setRollOverObjectAndEvent(null,false);
         this._playfieldInteractiveProxy.setRollOutObjectAndEvent(param1.data as IInteraction,param1.iconEvent);
      }
      
      public function onInteractiveClick(param1:InteractiveObjectEvent) : void
      {
         this._playfieldInteractiveProxy.clickObject = param1.data as IInteraction;
      }
      
      private function onInteractiveValueCheck(param1:InteractiveObjectEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.WARN_USER,null);
      }
      
      private function onBuildingOffsetChanged(param1:BuildingObjectEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,param1.data);
      }
      
      private function onMysteryBuildingUnwrapChanged(param1:BuildingObjectEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.END_MYSTERYBUILDING_UNWRAP,param1.data);
         this.onWhiteBlendAnimation();
      }
      
      private function onWhiteBlendAnimation() : void
      {
         sendNotification(ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_IN);
         sendNotification(ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_OUT);
      }
      
      private function onObject3dPositionUpdate(param1:Object3dEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,param1.target);
      }
      
      public function get timerList() : Vector.<ITimerInterest>
      {
         return this._timerList;
      }
      
      public function get streetObjectList() : Vector.<StreetObject>
      {
         return this._streetObjectList;
      }
      
      public function get pierObjectList() : Vector.<PierObject>
      {
         return this._pierObjectList;
      }
      
      public function getStreetObjectByVo(param1:StreetObjectVo) : StreetObject
      {
         var _loc2_:StreetObject = null;
         for each(_loc2_ in this._streetObjectList)
         {
            if(_loc2_.streetObjectVo == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function objectAtIsPlaneObjOrFree(param1:Cuboid) : Boolean
      {
         var _loc3_:IGameObjectVo = null;
         param1.traceMe();
         var _loc2_:Boolean = true;
         for each(_loc3_ in this.getGameObjectsByCuboid(param1))
         {
            if(!((_loc3_ == null || _loc3_ is PlaneObjectVo) && _loc3_.configPlayfieldItemVo.destroyable))
            {
               return false;
            }
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function get boulderList() : Vector.<BoulderFieldObject>
      {
         return this._boulderList;
      }
      
      public function get billboardList() : Vector.<BillboardObject>
      {
         return this._billboardList;
      }
      
      public function get expansionList() : Vector.<ExpansionFieldObject>
      {
         return this._expansionList;
      }
      
      public function get needShopList() : Vector.<ShopFieldObject>
      {
         return this._needShopList;
      }
      
      public function get squareObjectList() : Vector.<SquareObject>
      {
         return this._squareObjectList;
      }
      
      public function get residentialList() : Vector.<ResidentialFieldObject>
      {
         return this._residentialList;
      }
      
      public function getCitySquare() : CitySquareFieldObject
      {
         var _loc1_:BillboardObject = null;
         for each(_loc1_ in this._billboardList)
         {
            if(_loc1_ is CitySquareFieldObject)
            {
               return _loc1_ as CitySquareFieldObject;
            }
         }
         return null;
      }
      
      public function getTownHall() : TownHallFieldObject
      {
         var _loc1_:BillboardObject = null;
         for each(_loc1_ in this._activatorFieldObjectList)
         {
            if(_loc1_ is TownHallFieldObject)
            {
               return _loc1_ as TownHallFieldObject;
            }
         }
         return null;
      }
      
      public function getAcademyList() : Vector.<AcademyFieldObject>
      {
         var _loc2_:BillboardObject = null;
         var _loc1_:Vector.<AcademyFieldObject> = new Vector.<AcademyFieldObject>();
         for each(_loc2_ in this._billboardList)
         {
            if(_loc2_ is AcademyFieldObject)
            {
               _loc1_.push(_loc2_ as AcademyFieldObject);
            }
         }
         return _loc1_;
      }
      
      public function getCurrentActivatorFieldObject() : ActivatorFieldObject
      {
         if(this._activatorFieldObjectList == null)
         {
            return null;
         }
         if(this._activatorFieldObjectList.length > 0)
         {
            return this._activatorFieldObjectList[0];
         }
         return null;
      }
      
      private function getSurroundingStreets(param1:StreetObjectVo) : Vector.<StreetObjectVo>
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Vector.<StreetObjectVo> = new Vector.<StreetObjectVo>();
         _loc3_ = param1.matrix3dCoordinates.x + 1;
         _loc4_ = param1.matrix3dCoordinates.y;
         if(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)) is StreetObjectVo)
         {
            _loc2_.push(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)));
         }
         _loc3_ = param1.matrix3dCoordinates.x - 1;
         _loc4_ = param1.matrix3dCoordinates.y;
         if(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)) is StreetObjectVo)
         {
            _loc2_.push(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)));
         }
         _loc3_ = param1.matrix3dCoordinates.x;
         _loc4_ = param1.matrix3dCoordinates.y + 1;
         if(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)) is StreetObjectVo)
         {
            _loc2_.push(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)));
         }
         _loc3_ = param1.matrix3dCoordinates.x;
         _loc4_ = param1.matrix3dCoordinates.y - 1;
         if(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)) is StreetObjectVo)
         {
            _loc2_.push(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)));
         }
         return _loc2_;
      }
      
      public function get productionBuildingList() : Vector.<ProductionFieldObject>
      {
         return this._productionBuildingList;
      }
      
      public function get infrastructureBuildingList() : Vector.<InfrastructureBuildingFieldObject>
      {
         return this._infrastructureBuildingList;
      }
      
      public function getInfrastructureBuildingByDepartmentTag(param1:String) : Vector.<InfrastructureBuildingFieldObject>
      {
         var _loc3_:InfrastructureBuildingFieldObject = null;
         var _loc2_:Vector.<InfrastructureBuildingFieldObject> = new Vector.<InfrastructureBuildingFieldObject>();
         for each(_loc3_ in this._infrastructureBuildingList)
         {
            if(_loc3_.emergencyFieldObjectVo.department.indexOf(param1) != -1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function get infrastructureInterfaceObjectsList() : Vector.<IEmergencyInfrastructure>
      {
         return this._infrastructureInterfaceObjectsList;
      }
      
      public function getBridge() : BridgeFieldObject
      {
         return this._bridgeFieldObject;
      }
      
      public function get playfieldSwitchObjects() : Vector.<PlayfieldSwitchFieldObject>
      {
         return this._playfieldSwitchObjectList;
      }
      
      public function get cinemaFieldObject() : CinemaFieldObject
      {
         return this._cinemaFieldObject;
      }
      
      private function get cinemaProxy() : CinemaProxy
      {
         if(!this._cP)
         {
            this._cP = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
         }
         return this._cP;
      }
      
      public function get clientFieldObjectsList() : Vector.<ClientFieldObject>
      {
         return this._clientFieldObjectsList;
      }
      
      private function get planeProxy() : PlaneProxy
      {
         if(this._planeProxy == null)
         {
            this._planeProxy = facade.retrieveProxy(PlaneProxy.NAME) as PlaneProxy;
         }
         return this._planeProxy;
      }
   }
}

