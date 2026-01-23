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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "PlayfieldObjectsProxy";
      }
      
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
            if(_loc4_)
            {
               addr0025:
               this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
               if(_loc4_)
               {
                  this._playfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
                  if(_loc4_ || _loc3_)
                  {
                     this._needMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
                     if(_loc4_ || Boolean(this))
                     {
                        addr0098:
                        this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                     }
                  }
                  return;
               }
            }
            §§goto(addr0098);
         }
         §§goto(addr0025);
      }
      
      public static function addIconOffsets(param1:BillboardObjectVo, param2:FilePreloadServiceProxy) : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc8_:XML = null;
         var _loc3_:XML = new XML(param2.service.getXML("iconOffsetXML"));
         var _loc4_:Point = new Point();
         var _loc5_:Point = new Point();
         var _loc6_:Point = new Point();
         var _loc7_:Point = new Point();
         var _loc9_:* = String(param1.configPlayfieldItemVo.gfxId);
         if(!(_loc13_ && Boolean(param2)))
         {
            if(param1.buildingDTO != null)
            {
               if(_loc14_ || Boolean(param2))
               {
                  §§push(_loc9_);
                  if(!(_loc13_ && Boolean(_loc3_)))
                  {
                     §§push(param1.buildingDTO.buildingLevel);
                     if(_loc14_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc14_)
                     {
                        addr00b3:
                        _loc9_ = §§pop();
                        if(_loc13_)
                        {
                        }
                     }
                     else
                     {
                        addr00d3:
                        _loc9_ = §§pop() + 1;
                        addr00cf:
                     }
                     addr00d5:
                     var _loc10_:Number = Number(_loc9_);
                     if(!_loc13_)
                     {
                        if(_loc3_ == "")
                        {
                           throw new Error("Cannot load iconOffset.xml!");
                        }
                     }
                     for each(_loc8_ in _loc3_..configItems.configItem)
                     {
                        if(_loc14_)
                        {
                           if(_loc10_ != Number(_loc8_.@id))
                           {
                              continue;
                           }
                           if(_loc14_ || PlayfieldObjectsProxy)
                           {
                              _loc4_.x = Number(_loc8_.iconOffsetX.text());
                              if(_loc14_)
                              {
                                 _loc4_.y = Number(_loc8_.iconOffsetY.text());
                                 if(_loc14_ || Boolean(param2))
                                 {
                                    _loc5_.x = Number(_loc8_.baseiconOffsetX.text());
                                    if(!_loc13_)
                                    {
                                       addr0190:
                                       _loc5_.y = Number(_loc8_.baseiconOffsetY.text());
                                       if(_loc14_ || PlayfieldObjectsProxy)
                                       {
                                          addr01b1:
                                          _loc6_.x = Number(_loc8_.constructionIconOffsetX.text());
                                          if(_loc14_)
                                          {
                                             addr01ca:
                                             _loc6_.y = Number(_loc8_.constructionIconOffsetY.text());
                                             if(_loc14_ || Boolean(param1))
                                             {
                                                addr01eb:
                                                _loc7_.x = Number(_loc8_.placementIconOffsetX.text());
                                                if(_loc13_ && Boolean(param2))
                                                {
                                                   break;
                                                }
                                             }
                                             _loc7_.y = Number(_loc8_.placementIconOffsetY.text());
                                          }
                                          break;
                                       }
                                       §§goto(addr01eb);
                                    }
                                    §§goto(addr01b1);
                                 }
                                 §§goto(addr0190);
                              }
                              §§goto(addr01eb);
                           }
                           §§goto(addr01ca);
                        }
                        §§goto(addr01eb);
                     }
                     if(!(_loc13_ && Boolean(param2)))
                     {
                        param1.iconOffset = _loc4_;
                        if(!(_loc13_ && PlayfieldObjectsProxy))
                        {
                           param1.baseIconOffset = _loc5_;
                           if(_loc14_ || PlayfieldObjectsProxy)
                           {
                              addr0282:
                              param1.constructionIconOffset = _loc6_;
                              if(_loc14_)
                              {
                                 addr028e:
                                 param1.placementIconOffset = _loc7_;
                              }
                           }
                           return;
                        }
                        §§goto(addr0282);
                     }
                     §§goto(addr028e);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr00d5);
            }
            else
            {
               §§push(_loc9_);
               if(!(_loc13_ && Boolean(_loc3_)))
               {
                  §§goto(addr00cf);
               }
            }
            §§goto(addr00d3);
         }
         §§goto(addr00d5);
      }
      
      public function resetModel() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._object3DList = null;
            if(!(_loc2_ && Boolean(this)))
            {
               this._object3DList = new Vector.<IObject3D>();
               if(_loc1_)
               {
                  this._interactiveList = new Vector.<IInteraction>();
                  if(!_loc2_)
                  {
                     this._moveableList = new Vector.<IGameObject>();
                     if(_loc1_ || _loc1_)
                     {
                        addr0068:
                        this._timerList = new Vector.<ITimerInterest>();
                        if(_loc1_ || Boolean(this))
                        {
                           this._productionBuildingList = new Vector.<ProductionFieldObject>();
                           if(!_loc2_)
                           {
                              this._billboardList = new Vector.<BillboardObject>();
                              if(_loc1_)
                              {
                                 this._expansionList = new Vector.<ExpansionFieldObject>();
                                 if(_loc1_)
                                 {
                                    this._boulderList = new Vector.<BoulderFieldObject>();
                                    if(!_loc2_)
                                    {
                                       this._residentialList = new Vector.<ResidentialFieldObject>();
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00e9:
                                          this._playfieldSwitchObjectList = new Vector.<PlayfieldSwitchFieldObject>();
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             this._decorationList = new Vector.<DecorationFieldObject>();
                                             if(_loc1_)
                                             {
                                                addr0121:
                                                this._streetObjectList = new Vector.<StreetObject>();
                                                if(_loc1_)
                                                {
                                                   addr0134:
                                                   this._squareObjectList = new Vector.<SquareObject>();
                                                   if(_loc1_)
                                                   {
                                                      addr0147:
                                                      this._groundObjectList = new Vector.<PlaneObject>();
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         §§goto(addr0162);
                                                      }
                                                   }
                                                   §§goto(addr01ce);
                                                }
                                                §§goto(addr017d);
                                             }
                                             §§goto(addr0198);
                                          }
                                          §§goto(addr0147);
                                       }
                                       §§goto(addr0162);
                                    }
                                    §§goto(addr01f4);
                                 }
                              }
                              §§goto(addr017d);
                           }
                           §§goto(addr0121);
                        }
                        §§goto(addr0134);
                     }
                     addr0162:
                     this._pierObjectList = new Vector.<PierObject>();
                     if(!(_loc2_ && _loc1_))
                     {
                        addr017d:
                        this._needShopList = new Vector.<ShopFieldObject>();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0198:
                           this._clientFieldObjectsList = new Vector.<ClientFieldObject>();
                           if(_loc1_ || _loc2_)
                           {
                              this._activatorFieldObjectList = new Vector.<ActivatorFieldObject>();
                              if(_loc1_ || Boolean(this))
                              {
                                 addr01ce:
                                 this._infrastructureBuildingList = new Vector.<InfrastructureBuildingFieldObject>();
                                 if(_loc1_)
                                 {
                                    §§goto(addr01e1);
                                 }
                              }
                              §§goto(addr021d);
                           }
                           §§goto(addr0234);
                        }
                        §§goto(addr021d);
                     }
                     addr01e1:
                     this._infrastructureInterfaceObjectsList = new Vector.<IEmergencyInfrastructure>();
                     if(!_loc2_)
                     {
                        addr01f4:
                        this._needMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
                        if(_loc1_ || _loc2_)
                        {
                           addr021d:
                           this._playfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
                           if(_loc1_)
                           {
                              addr0234:
                              this._objectVosMatrix = new ArrayMatrix3D(this._playfieldProxy.fieldSize.x,this._playfieldProxy.fieldSize.y);
                           }
                           §§goto(addr0251);
                        }
                        §§goto(addr0234);
                     }
                     addr0251:
                     return;
                  }
                  §§goto(addr0068);
               }
               §§goto(addr021d);
            }
            §§goto(addr0121);
         }
         §§goto(addr00e9);
      }
      
      public function addGameObjectByData(param1:IGameObjectVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            §§push(param1 is BoulderObjectVo);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr004e:
                     if((param1 as BoulderObjectVo).isStreetBoulder)
                     {
                        if(_loc3_)
                        {
                           this.checkForGroundLock(param1,true);
                           if(_loc3_)
                           {
                              §§goto(addr0071);
                           }
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr008b);
               }
               addr0071:
               this._objectVosMatrix.setObjectByCuboid(param1,param1.matrix3dCoordinates);
               if(_loc3_ || _loc2_)
               {
                  addr008b:
                  sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,param1);
               }
               return;
            }
            §§goto(addr004e);
         }
         §§goto(addr008b);
      }
      
      public function removeGameObjectVofromMatrix(param1:IGameObjectVo) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:StreetObject = null;
         if(_loc7_ || _loc2_)
         {
            §§push(param1 is BoulderObjectVo);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     addr004e:
                     if((param1 as BoulderObjectVo).isStreetBoulder)
                     {
                        if(_loc7_)
                        {
                           addr0058:
                           this.checkForGroundLock(param1,false);
                        }
                     }
                  }
               }
               var _loc2_:StreetObject = null;
               for each(_loc3_ in this._streetObjectList)
               {
                  if(_loc7_ || Boolean(this))
                  {
                     if(!RandomUtilities.isEqual(param1,_loc3_.streetObjectVo,false))
                     {
                        continue;
                     }
                  }
                  _loc2_ = _loc3_;
                  break;
               }
               if(_loc7_)
               {
                  if(_loc2_)
                  {
                     if(_loc7_)
                     {
                        addr00cf:
                        §§push(_loc2_.streetObjectVo);
                        if(_loc7_)
                        {
                           §§push(Boolean(§§pop().configPlayfieldItemVo.driveable));
                           if(_loc7_ || Boolean(_loc2_))
                           {
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              if(_temp_6)
                              {
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    addr0101:
                                    §§pop();
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       §§push(_loc2_.streetObjectVo);
                                       if(!_loc6_)
                                       {
                                          addr0121:
                                          if(Boolean(§§pop().configPlayfieldItemVo.walkable))
                                          {
                                             if(!_loc6_)
                                             {
                                                addr012b:
                                                §§push(_loc2_.streetObjectVo);
                                                if(_loc7_)
                                                {
                                                   if(§§pop().configPlayfieldItemVo.driveable)
                                                   {
                                                      if(_loc7_ || Boolean(_loc3_))
                                                      {
                                                         addr0159:
                                                         addr015d:
                                                         if(_loc2_.streetObjectVo.configPlayfieldItemVo.walkable)
                                                         {
                                                            if(_loc7_ || Boolean(param1))
                                                            {
                                                               addr0175:
                                                               this._objectVosMatrix.setObjectByCuboid(null,param1.matrix3dCoordinates);
                                                            }
                                                            return;
                                                         }
                                                      }
                                                      §§goto(addr0175);
                                                   }
                                                   §§goto(addr0159);
                                                }
                                                §§goto(addr015d);
                                             }
                                             §§goto(addr0175);
                                          }
                                          §§goto(addr012b);
                                       }
                                       §§goto(addr015d);
                                    }
                                    §§goto(addr0159);
                                 }
                              }
                              §§goto(addr0121);
                           }
                           §§goto(addr0101);
                        }
                        §§goto(addr015d);
                     }
                  }
                  §§goto(addr0175);
               }
               §§goto(addr00cf);
            }
            §§goto(addr004e);
         }
         §§goto(addr0058);
      }
      
      private function checkForGroundLock(param1:IGameObjectVo, param2:Boolean) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:StaticWalker = null;
         var _loc6_:IWalker = null;
         var _loc3_:Cuboid = param1.matrix3dCoordinates.clone() as Cuboid;
         if(!_loc10_)
         {
            §§push(_loc3_);
            §§push(_loc3_.z);
            if(_loc9_)
            {
               §§push(§§pop() - 1);
            }
            §§pop().z = §§pop();
         }
         var _loc4_:IGameObjectVo = this.getGameObjectByCuboid(_loc3_);
         §§push(Boolean(_loc4_));
         if(!_loc10_)
         {
            var _temp_2:* = §§pop();
            §§push(_temp_2);
            if(_temp_2)
            {
               if(!_loc10_)
               {
                  addr0062:
                  §§pop();
                  if(!(_loc10_ && Boolean(this)))
                  {
                     §§push(_loc4_ is PlaneObjectVo);
                     if(!(_loc10_ && Boolean(param1)))
                     {
                        §§goto(addr0085);
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr00be);
            }
            addr0085:
            if(§§pop())
            {
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  (_loc4_ as PlaneObjectVo).userInteractionLocked = param2;
                  if(!(_loc10_ && Boolean(param1)))
                  {
                     addr00be:
                     if(param2)
                     {
                        addr00c2:
                        _loc5_ = new StaticWalker((param1 as BoulderObjectVo).boulderVo.id.toString(),Terrain.TYPE_ALL_TERRAINS);
                        _loc5_.waypoints.push(new IntPoint(param1.matrix3dCoordinates.x,param1.matrix3dCoordinates.y));
                        if(_loc9_)
                        {
                           this._pathWalkProxy.addWalker(_loc5_);
                        }
                     }
                     else
                     {
                        for each(_loc6_ in this._pathWalkProxy.pathwalkManager.walkerContainer.walkers)
                        {
                           if(_loc6_.id == (param1 as BoulderObjectVo).boulderVo.id.toString())
                           {
                              if(_loc9_ || Boolean(_loc3_))
                              {
                                 this._pathWalkProxy.pathwalkManager.walkerContainer.killWalker(_loc6_);
                              }
                           }
                        }
                     }
                     §§goto(addr0180);
                  }
               }
               §§goto(addr00c2);
            }
            addr0180:
            return;
         }
         §§goto(addr0062);
      }
      
      public function reAddGameObjVoToMatrix(param1:IGameObjectVo, param2:IInteraction = null) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:StreetObject = null;
         var _loc4_:StreetObject = null;
         if(_loc7_)
         {
            this._objectVosMatrix.setObjectByCuboid(param1,param1.matrix3dCoordinates);
            if(!_loc8_)
            {
               §§goto(addr003b);
            }
            §§goto(addr0044);
         }
         addr003b:
         if(param1 is StreetObjectVo)
         {
            addr0044:
            _loc3_ = param2 as StreetObject;
            if(_loc7_ || Boolean(_loc3_))
            {
               if(_loc3_)
               {
                  if(!(_loc8_ && Boolean(param1)))
                  {
                     addr006e:
                     §§push(_loc3_.streetObjectVo);
                     if(!(_loc8_ && Boolean(param2)))
                     {
                        §§push(Boolean(§§pop().configPlayfieldItemVo.driveable));
                        if(_loc7_ || Boolean(param1))
                        {
                           var _temp_5:* = §§pop();
                           §§push(_temp_5);
                           if(_temp_5)
                           {
                              if(_loc7_ || Boolean(param1))
                              {
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(_loc3_.streetObjectVo);
                                    if(!_loc8_)
                                    {
                                       addr00cc:
                                       addr00c5:
                                       if(Boolean(§§pop().configPlayfieldItemVo.walkable))
                                       {
                                          if(_loc7_)
                                          {
                                             addr00d6:
                                             §§push(_loc3_.streetObjectVo);
                                             if(!_loc8_)
                                             {
                                                if(§§pop().configPlayfieldItemVo.driveable)
                                                {
                                                   if(_loc7_ || Boolean(_loc3_))
                                                   {
                                                      addr00f8:
                                                      addr00fc:
                                                      if(_loc3_.streetObjectVo.configPlayfieldItemVo.walkable)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr0106);
                                                }
                                                §§goto(addr00f8);
                                             }
                                             §§goto(addr00fc);
                                          }
                                          §§goto(addr0106);
                                       }
                                       §§goto(addr00d6);
                                    }
                                    §§goto(addr00fc);
                                 }
                                 §§goto(addr00d6);
                              }
                           }
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr00d6);
               }
               addr0106:
               for each(_loc4_ in this._streetObjectList)
               {
                  if(!(_loc8_ && Boolean(param2)))
                  {
                     sendNotification(ApplicationNotificationConstants.GROUND_GENERATE_STREETS_TEXTURES_COMMAND,_loc4_);
                  }
               }
               §§goto(addr014f);
            }
            §§goto(addr006e);
         }
         addr014f:
      }
      
      public function getGameObjectByCuboid(param1:Cuboid) : IGameObjectVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._objectVosMatrix.getObjectByCuboid(param1);
         if(_loc3_)
         {
            if(_loc2_ == null)
            {
               if(!_loc4_)
               {
                  return null;
               }
            }
         }
         return _loc2_ as IGameObjectVo;
      }
      
      public function getGameObjectsByCuboid(param1:Cuboid) : Vector.<IGameObjectVo>
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:Object = null;
         var _loc2_:Vector.<IGameObjectVo> = new Vector.<IGameObjectVo>();
         for each(_loc3_ in this._objectVosMatrix.getObjectsByCuboid(param1))
         {
            if(!(_loc7_ && Boolean(this)))
            {
               if(!(_loc3_ is IGameObjectVo))
               {
                  continue;
               }
               if(_loc7_ && Boolean(param1))
               {
                  continue;
               }
            }
            _loc2_.push(_loc3_ as IGameObjectVo);
         }
         return _loc2_;
      }
      
      public function getResidentialsByRect(param1:Rectangle) : Vector.<ResidentialFieldObject>
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
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
                  §§push(_loc5_.residentialFieldObjectVo);
                  if(_loc10_)
                  {
                     §§push(§§pop().buildingDTO == null);
                     if(_loc10_ || Boolean(_loc3_))
                     {
                        §§push(!§§pop());
                        if(_loc10_ || Boolean(_loc2_))
                        {
                           var _temp_5:* = §§pop();
                           §§push(_temp_5);
                           if(_temp_5)
                           {
                              if(!_loc11_)
                              {
                                 addr00c7:
                                 §§pop();
                                 if(!_loc11_)
                                 {
                                    addr00ed:
                                    addr00e0:
                                    if(_loc5_.residentialFieldObjectVo.buildingDTO.id != _loc4_.buildingDTO.id)
                                    {
                                       continue;
                                    }
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc2_.push(_loc5_);
                                 break;
                              }
                           }
                        }
                        §§goto(addr00ed);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr00e0);
               }
            }
         }
         return _loc2_;
      }
      
      public function getExpansionByRect(param1:Rectangle) : Vector.<ExpansionFieldObject>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ExpansionFieldObject = null;
         var _loc2_:Vector.<ExpansionFieldObject> = new Vector.<ExpansionFieldObject>();
         for each(_loc3_ in this._expansionList)
         {
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               §§push(param1.x + param1.width <= _loc3_.expansionFieldObjectVo.configOrigin.px);
               if(_loc7_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     if(!§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§pop();
                           if(_loc7_)
                           {
                              addr0087:
                              §§push(param1.y + param1.height <= _loc3_.expansionFieldObjectVo.configOrigin.py);
                              if(!_loc6_)
                              {
                                 addr00ac:
                                 var _temp_5:* = §§pop();
                                 §§push(_temp_5);
                                 §§push(_temp_5);
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          addr00cd:
                                          §§pop();
                                          if(_loc7_)
                                          {
                                             addr00d4:
                                             §§push(param1.x >= _loc3_.expansionFieldObjectVo.configOrigin.px + _loc3_.expansionFieldObjectVo.configOrigin.sx);
                                             if(!_loc6_)
                                             {
                                                addr00f3:
                                                var _temp_8:* = §§pop();
                                                addr00f4:
                                                §§push(_temp_8);
                                                if(!_temp_8)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      addr00fe:
                                                      §§pop();
                                                      if(!(_loc7_ || Boolean(this)))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(param1.y >= _loc3_.expansionFieldObjectVo.configOrigin.py + _loc3_.expansionFieldObjectVo.configOrigin.sy);
                                                   }
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc6_ && Boolean(param1))
                                                {
                                                }
                                             }
                                             else
                                             {
                                                _loc2_.push(_loc3_);
                                             }
                                          }
                                          continue;
                                       }
                                    }
                                    §§goto(addr00f3);
                                 }
                                 §§goto(addr00f4);
                              }
                              §§goto(addr00fe);
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr00cd);
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr00f4);
               }
               §§goto(addr00cd);
            }
            §§goto(addr0087);
         }
         return _loc2_;
      }
      
      public function getEmergencyableBuildingsByRect(param1:Rectangle) : Vector.<BillboardObject>
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:BillboardObject = null;
         var _loc2_:Vector.<BillboardObject> = new Vector.<BillboardObject>();
         for each(_loc3_ in this._billboardList)
         {
            if(_loc7_ && Boolean(param1))
            {
               continue;
            }
            if(_loc3_.billboardObjectVo.buildingDTO == null)
            {
               if(!_loc7_)
               {
                  continue;
               }
               addr00f1:
               §§push(param1.x >= _loc3_.billboardObjectVo.matrixCoordinates.x + _loc3_.billboardObjectVo.configPlayfieldItemVo.sizeX);
               if(_loc6_ || Boolean(_loc2_))
               {
                  addr0115:
                  var _temp_3:* = §§pop();
                  addr0116:
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!(_loc7_ && Boolean(this)))
                     {
                        addr0128:
                        §§pop();
                        if(!(_loc6_ || Boolean(_loc2_)))
                        {
                           continue;
                        }
                        addr0137:
                        §§push(param1.y >= _loc3_.billboardObjectVo.matrixCoordinates.y + _loc3_.billboardObjectVo.configPlayfieldItemVo.sizeY);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc6_ || Boolean(_loc3_))
                     {
                     }
                  }
                  else
                  {
                     _loc2_.push(_loc3_);
                  }
                  continue;
               }
               §§goto(addr0128);
            }
            else
            {
               §§push(param1.x + param1.width <= _loc3_.billboardObjectVo.matrixCoordinates.x);
               if(_loc6_)
               {
                  var _temp_7:* = §§pop();
                  §§push(_temp_7);
                  §§push(_temp_7);
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§pop();
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              §§push(param1.y + param1.height <= _loc3_.billboardObjectVo.matrixCoordinates.y);
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 addr00d1:
                                 var _temp_12:* = §§pop();
                                 §§push(_temp_12);
                                 §§push(_temp_12);
                                 if(!_loc7_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc7_ && Boolean(_loc3_)))
                                       {
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             §§goto(addr00f1);
                                          }
                                          §§goto(addr0137);
                                       }
                                       §§goto(addr0128);
                                    }
                                    §§goto(addr0115);
                                 }
                                 §§goto(addr0116);
                              }
                              §§goto(addr0115);
                           }
                           §§goto(addr00f1);
                        }
                        §§goto(addr0128);
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr0116);
               }
               §§goto(addr00d1);
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
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:Object = null;
         var _loc5_:IPlaneObjectVo = null;
         var _loc6_:* = false;
         var _loc2_:Vector.<IPlaneObjectVo> = new Vector.<IPlaneObjectVo>();
         var _loc3_:Vector.<Object> = this.planeProxy.groundMatrix3d.getObjectsByCuboid(param1);
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = _loc4_ as IPlaneObjectVo;
            §§push(_loc5_.isConnectedToStreet);
            if(_loc10_)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(_loc10_ || Boolean(param1))
               {
                  §§push(true);
                  if(_loc10_)
                  {
                     _loc6_ = §§pop();
                     if(!(_loc9_ && Boolean(this)))
                     {
                        §§push(param1.right == _loc5_.matrixCoordinates.right);
                        if(_loc10_)
                        {
                           var _temp_6:* = §§pop();
                           §§push(_temp_6);
                           §§push(_temp_6);
                           if(!_loc9_)
                           {
                              if(§§pop())
                              {
                                 if(_loc10_)
                                 {
                                    §§pop();
                                    if(_loc10_ || Boolean(_loc3_))
                                    {
                                       §§push(param1.top == _loc5_.matrixCoordinates.top);
                                       if(!(_loc9_ && Boolean(_loc3_)))
                                       {
                                          addr00e0:
                                          if(§§pop())
                                          {
                                             if(_loc10_ || Boolean(this))
                                             {
                                                §§push(false);
                                                if(_loc10_)
                                                {
                                                   addr00f9:
                                                   _loc6_ = §§pop();
                                                   if(_loc9_ && Boolean(_loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   addr0109:
                                                   §§push(param1.right == _loc5_.matrixCoordinates.right);
                                                   if(_loc10_)
                                                   {
                                                      var _temp_11:* = §§pop();
                                                      §§push(_temp_11);
                                                      §§push(_temp_11);
                                                      if(_loc10_)
                                                      {
                                                         addr0121:
                                                         if(§§pop())
                                                         {
                                                            if(_loc10_ || Boolean(this))
                                                            {
                                                               §§pop();
                                                               if(_loc9_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(param1.bottom == _loc5_.matrixCoordinates.bottom);
                                                               if(!(_loc9_ && Boolean(param1)))
                                                               {
                                                                  addr0162:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc10_ || Boolean(this))
                                                                     {
                                                                        addr0174:
                                                                        §§push(false);
                                                                        if(_loc10_ || Boolean(_loc3_))
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr018b:
                                                                              §§push(param1.left == _loc5_.matrixCoordinates.left);
                                                                              if(!(_loc9_ && Boolean(_loc2_)))
                                                                              {
                                                                                 var _temp_17:* = §§pop();
                                                                                 §§push(_temp_17);
                                                                                 §§push(_temp_17);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc9_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          addr01bd:
                                                                                          §§pop();
                                                                                          if(!(_loc10_ || Boolean(this)))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(param1.top == _loc5_.matrixCoordinates.top);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr01dd:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   addr01e7:
                                                                                                   §§push(false);
                                                                                                   if(_loc10_ || Boolean(param1))
                                                                                                   {
                                                                                                      addr01f6:
                                                                                                      _loc6_ = §§pop();
                                                                                                      if(!(_loc10_ || Boolean(this)))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr0206:
                                                                                                      §§push(param1.left == _loc5_.matrixCoordinates.left);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         addr0217:
                                                                                                         var _temp_22:* = §§pop();
                                                                                                         addr0218:
                                                                                                         §§push(_temp_22);
                                                                                                         if(_temp_22)
                                                                                                         {
                                                                                                            if(_loc10_ || Boolean(_loc2_))
                                                                                                            {
                                                                                                               addr022a:
                                                                                                               §§pop();
                                                                                                               if(!(_loc10_ || Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(param1.bottom == _loc5_.matrixCoordinates.bottom);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr024c:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     addr0256:
                                                                                                                     §§push(false);
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        addr025d:
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           addr027d:
                                                                                                                           addr027b:
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(!(_loc10_ || Boolean(this)))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr028f:
                                                                                                                        _loc2_.push(_loc5_);
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§goto(addr027d);
                                                                                                                  }
                                                                                                                  §§goto(addr027b);
                                                                                                               }
                                                                                                               §§goto(addr027d);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr024c);
                                                                                                      }
                                                                                                      §§goto(addr025d);
                                                                                                   }
                                                                                                   §§goto(addr027d);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0206);
                                                                                          }
                                                                                          §§goto(addr01f6);
                                                                                       }
                                                                                       §§goto(addr022a);
                                                                                    }
                                                                                    §§goto(addr01dd);
                                                                                 }
                                                                                 §§goto(addr0218);
                                                                              }
                                                                              §§goto(addr01f6);
                                                                           }
                                                                           §§goto(addr028f);
                                                                        }
                                                                        §§goto(addr022a);
                                                                     }
                                                                     §§goto(addr0256);
                                                                  }
                                                                  §§goto(addr018b);
                                                               }
                                                               §§goto(addr01bd);
                                                            }
                                                            §§goto(addr01f6);
                                                         }
                                                         §§goto(addr0162);
                                                      }
                                                      §§goto(addr0218);
                                                   }
                                                   §§goto(addr01bd);
                                                }
                                                §§goto(addr024c);
                                             }
                                             §§goto(addr0174);
                                          }
                                          §§goto(addr0109);
                                       }
                                       §§goto(addr0217);
                                    }
                                    §§goto(addr027b);
                                 }
                                 §§goto(addr01f6);
                              }
                              §§goto(addr00e0);
                           }
                           §§goto(addr0121);
                        }
                        §§goto(addr00f9);
                     }
                     §§goto(addr01e7);
                  }
                  §§goto(addr01f6);
               }
               §§goto(addr0206);
            }
            §§goto(addr01bd);
         }
         return _loc2_;
      }
      
      public function getObjectByVo(param1:IObject3dVo) : IObject3D
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:IObject3D = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._object3DList;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  §§push(_loc2_ == null);
                  if(_loc6_)
                  {
                     §§push(!§§pop());
                     if(_loc6_)
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        if(_temp_2)
                        {
                           if(!_loc5_)
                           {
                              addr006e:
                              §§pop();
                              if(!(_loc6_ || Boolean(_loc3_)))
                              {
                                 continue;
                              }
                              addr007d:
                              §§push(_loc2_.fieldObject3dVo == param1);
                           }
                        }
                        addr0084:
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                     §§goto(addr006e);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr007d);
            }
            return null;
         }
         return _loc2_;
      }
      
      public function getFirstNullBillboard() : BillboardObject
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:IObject3D = null;
         var _loc3_:* = this._object3DList;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               §§push(_loc1_ is BillboardObject);
               if(!(_loc4_ && _loc3_))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(!(_loc5_ || Boolean(_loc1_)))
                        {
                           continue;
                        }
                        §§push(BillboardObject(_loc1_).billboardObjectVo.buildingDTO == null);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc5_ || Boolean(_loc1_))
                  {
                     return BillboardObject(_loc1_);
                  }
               }
            }
         }
         return null;
      }
      
      public function getBillboardById(param1:Number) : BillboardObject
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:IObject3D = null;
         var _loc3_:BillboardObject = null;
         var _loc4_:DecorationFieldObjectVo = null;
         var _loc5_:BoulderObjectVo = null;
         var _loc6_:int = 0;
         var _loc7_:* = this._object3DList;
         while(true)
         {
            for each(_loc2_ in _loc7_)
            {
               if(!(_loc8_ && Boolean(this)))
               {
                  if(!(_loc2_ is BillboardObject))
                  {
                     continue;
                  }
               }
               _loc3_ = _loc2_ as BillboardObject;
               if(_loc9_)
               {
                  §§push(_loc3_.billboardObjectVo.buildingDTO == null);
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     §§push(!§§pop());
                     if(!_loc8_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(!_loc8_)
                           {
                              §§pop();
                              if(!_loc8_)
                              {
                                 §§push(param1 == _loc3_.billboardObjectVo.buildingDTO.id);
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                    addr00ac:
                                    if(§§pop())
                                    {
                                       if(!(_loc8_ && Boolean(param1)))
                                       {
                                          return _loc3_;
                                       }
                                       addr00ee:
                                       _loc4_ = DecorationFieldObjectVo(_loc3_.billboardObjectVo);
                                       §§push(_loc4_);
                                       if(_loc9_)
                                       {
                                          var _temp_8:* = §§pop();
                                          §§push(_temp_8);
                                          §§push(_temp_8);
                                          if(!_loc8_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc8_)
                                                {
                                                   §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      §§push(_loc4_.decorationVo);
                                                      if(!(_loc8_ && Boolean(this)))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc9_ || Boolean(_loc2_))
                                                         {
                                                            addr0141:
                                                            var _temp_11:* = §§pop();
                                                            addr0142:
                                                            §§push(_temp_11);
                                                            if(_temp_11)
                                                            {
                                                               if(!(_loc8_ && Boolean(param1)))
                                                               {
                                                                  §§pop();
                                                                  if(_loc9_)
                                                                  {
                                                                     addr016c:
                                                                     addr0160:
                                                                     addr015b:
                                                                     §§push(_loc4_.decorationVo.dto == null);
                                                                     if(_loc9_)
                                                                     {
                                                                        addr016b:
                                                                        §§push(!§§pop());
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc9_ || Boolean(_loc3_)))
                                                                        {
                                                                           addr0193:
                                                                           return _loc3_;
                                                                        }
                                                                        if(param1 == _loc4_.decorationVo.dto.id)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§goto(addr0193);
                                                                           }
                                                                        }
                                                                        addr0195:
                                                                        addr019a:
                                                                        if(_loc3_ is BoulderFieldObject)
                                                                        {
                                                                           _loc5_ = BoulderObjectVo(_loc3_.billboardObjectVo);
                                                                           addr019e:
                                                                           if(_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(param1 == _loc5_.boulderVo.id)
                                                                           {
                                                                              if(!(_loc8_ && Boolean(_loc3_)))
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr0195);
                                                               }
                                                               §§goto(addr016b);
                                                            }
                                                            §§goto(addr016c);
                                                         }
                                                         §§goto(addr016b);
                                                      }
                                                      §§goto(addr0160);
                                                   }
                                                   §§goto(addr015b);
                                                }
                                                §§goto(addr016c);
                                             }
                                             §§goto(addr0141);
                                          }
                                          §§goto(addr0142);
                                       }
                                       §§goto(addr016b);
                                    }
                                    else
                                    {
                                       addr00c6:
                                       §§push(_loc3_ is DecorationFieldObject);
                                       if(!(_loc8_ && Boolean(this)))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc8_)
                                             {
                                                §§goto(addr00ee);
                                             }
                                             §§goto(addr019e);
                                          }
                                          §§goto(addr0195);
                                       }
                                    }
                                 }
                                 §§goto(addr019a);
                              }
                              §§goto(addr00c6);
                           }
                        }
                     }
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr00ee);
            }
            return null;
         }
         return _loc3_;
      }
      
      public function getPlaneObjectByVo(param1:IGameObjectVo) : IPlaneObject
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:StreetObject = null;
         var _loc3_:SquareObject = null;
         var _loc4_:PlaneObject = null;
         var _loc5_:PierObject = null;
         var _loc6_:* = 0;
         var _loc7_:* = this._streetObjectList;
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(!(_loc9_ && Boolean(_loc3_)))
            {
               if(!§§pop())
               {
                  if(_loc8_ || Boolean(param1))
                  {
                     if(_loc8_)
                     {
                        if(!(_loc9_ && Boolean(this)))
                        {
                           §§push(0);
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              _loc6_ = §§pop();
                              if(_loc8_)
                              {
                                 _loc7_ = this._squareObjectList;
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc7_,_loc6_));
                                    if(!(_loc9_ && Boolean(param1)))
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc9_ && Boolean(_loc3_)))
                                             {
                                                if(_loc8_)
                                                {
                                                   addr0182:
                                                   if(_loc8_ || Boolean(param1))
                                                   {
                                                      addr0192:
                                                      §§push(0);
                                                      if(_loc8_ || Boolean(_loc2_))
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            _loc7_ = this._groundObjectList;
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc7_,_loc6_));
                                                               if(_loc8_ || Boolean(this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        _loc4_ = §§nextvalue(_loc6_,_loc7_);
                                                                        §§push(_loc4_ == null);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(!(_loc9_ && Boolean(_loc2_)))
                                                                           {
                                                                              var _temp_16:* = §§pop();
                                                                              §§push(_temp_16);
                                                                              if(_temp_16)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§goto(addr01e3);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01f1);
                                                                           }
                                                                        }
                                                                        addr01e3:
                                                                        §§pop();
                                                                        if(_loc8_)
                                                                        {
                                                                           addr01f1:
                                                                           if(_loc4_.planeObjectVo != param1)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        return _loc4_;
                                                                     }
                                                                     if(_loc8_ || Boolean(param1))
                                                                     {
                                                                        addr0221:
                                                                        if(_loc8_ || Boolean(_loc3_))
                                                                        {
                                                                           §§goto(addr0231);
                                                                        }
                                                                        §§goto(addr02c5);
                                                                     }
                                                                     addr02c3:
                                                                     §§goto(addr02c5);
                                                                     continue loop5;
                                                                  }
                                                                  addr020f:
                                                               }
                                                               break;
                                                            }
                                                            for(; §§pop(); §§push(§§hasnext(_loc7_,_loc6_)))
                                                            {
                                                               _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                               §§push(_loc5_ == null);
                                                               if(_loc8_ || Boolean(this))
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     var _temp_19:* = §§pop();
                                                                     §§push(_temp_19);
                                                                     if(_temp_19)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc9_ && Boolean(_loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(_loc5_.objectVo == param1);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     return _loc5_;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr02c3);
                                                         }
                                                         addr0231:
                                                         if(_loc8_ || Boolean(_loc3_))
                                                         {
                                                            addr0243:
                                                            _loc6_ = 0;
                                                            addr0241:
                                                            if(!(_loc9_ && Boolean(this)))
                                                            {
                                                               _loc7_ = this._pierObjectList;
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc7_,_loc6_));
                                                                  break loop5;
                                                               }
                                                            }
                                                            addr02c5:
                                                         }
                                                         return null;
                                                      }
                                                      §§goto(addr0243);
                                                   }
                                                   §§goto(addr0241);
                                                }
                                                §§goto(addr02c5);
                                             }
                                             §§goto(addr0221);
                                          }
                                          else
                                          {
                                             _loc3_ = §§nextvalue(_loc6_,_loc7_);
                                             if(_loc8_)
                                             {
                                                §§push(_loc3_ == null);
                                                if(!(_loc9_ && Boolean(_loc3_)))
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc8_)
                                                   {
                                                      addr0116:
                                                      var _temp_22:* = §§pop();
                                                      §§push(_temp_22);
                                                      if(_temp_22)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            §§pop();
                                                            if(_loc9_ && Boolean(_loc3_))
                                                            {
                                                               continue loop1;
                                                            }
                                                            addr0130:
                                                            §§push(_loc3_.squareObjectVo == param1);
                                                         }
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc9_ && Boolean(_loc3_)))
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr0116);
                                             }
                                             §§goto(addr0130);
                                          }
                                       }
                                       return _loc3_;
                                       addr0168:
                                    }
                                    §§goto(addr020f);
                                 }
                              }
                              §§goto(addr0182);
                           }
                           §§goto(addr0243);
                        }
                        §§goto(addr0192);
                     }
                     §§goto(addr0182);
                  }
                  §§goto(addr02c3);
               }
               else
               {
                  _loc2_ = §§nextvalue(_loc6_,_loc7_);
                  if(!_loc8_)
                  {
                     continue;
                  }
                  §§push(_loc2_ == null);
                  if(_loc8_)
                  {
                     §§push(!§§pop());
                     if(!_loc9_)
                     {
                        var _temp_25:* = §§pop();
                        §§push(_temp_25);
                        if(_temp_25)
                        {
                           if(_loc8_ || Boolean(this))
                           {
                              addr006f:
                              §§pop();
                              if(!_loc8_)
                              {
                                 break;
                              }
                              §§push(_loc2_.streetObjectVo == param1);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc9_ && Boolean(param1)))
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr006f);
               }
            }
            §§goto(addr0168);
         }
         return _loc2_;
      }
      
      public function getPlaneObjectById(param1:Number) : IPlaneObject
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:StreetObject = null;
         var _loc3_:SquareObject = null;
         var _loc4_:PlaneObject = null;
         var _loc5_:PierObject = null;
         var _loc6_:* = 0;
         var _loc7_:* = this._streetObjectList;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(_loc9_)
            {
               break;
            }
            if(!§§pop())
            {
               if(!(_loc9_ && Boolean(param1)))
               {
                  if(!(_loc9_ && Boolean(this)))
                  {
                     if(_loc8_ || Boolean(param1))
                     {
                        §§push(0);
                        if(!(_loc9_ && Boolean(_loc3_)))
                        {
                           _loc6_ = §§pop();
                           if(_loc8_ || Boolean(_loc2_))
                           {
                              _loc7_ = this._squareObjectList;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc7_,_loc6_));
                                 if(!_loc9_)
                                 {
                                    break loop0;
                                 }
                                 addr02f4:
                                 §§goto(addr02fa);
                              }
                              addr0181:
                           }
                           addr01c4:
                           _loc7_ = this._groundObjectList;
                           while(true)
                           {
                              §§push(§§hasnext(_loc7_,_loc6_));
                              if(_loc9_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 if(_loc8_ || Boolean(_loc2_))
                                 {
                                    if(!(_loc9_ && Boolean(param1)))
                                    {
                                       if(!(_loc9_ && Boolean(_loc3_)))
                                       {
                                          addr026b:
                                          _loc6_ = 0;
                                          addr0269:
                                          if(!(_loc9_ && Boolean(_loc3_)))
                                          {
                                             addr027b:
                                             _loc7_ = this._pierObjectList;
                                             §§goto(addr02f1);
                                          }
                                       }
                                       §§goto(addr02fa);
                                    }
                                    §§goto(addr027b);
                                 }
                                 §§goto(addr02fa);
                              }
                              else
                              {
                                 _loc4_ = §§nextvalue(_loc6_,_loc7_);
                                 §§push(_loc4_.planeObjectVo.groundDTO == null);
                                 if(_loc8_ || Boolean(param1))
                                 {
                                    §§push(!§§pop());
                                    if(!_loc9_)
                                    {
                                       addr01f8:
                                       var _temp_16:* = §§pop();
                                       §§push(_temp_16);
                                       if(_temp_16)
                                       {
                                          if(_loc8_)
                                          {
                                             addr0203:
                                             §§pop();
                                             if(_loc9_ && Boolean(_loc3_))
                                             {
                                                continue;
                                             }
                                             §§push(param1 == _loc4_.planeObjectVo.groundDTO.id);
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             return _loc2_ as IPlaneObject;
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr0203);
                                 }
                                 §§goto(addr01f8);
                              }
                           }
                           §§goto(addr02f4);
                        }
                        addr01bc:
                        _loc6_ = §§pop();
                        if(!_loc9_)
                        {
                           §§goto(addr01c4);
                        }
                     }
                  }
                  §§goto(addr02fa);
               }
               addr019c:
               if(!_loc9_)
               {
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     §§push(0);
                     if(!_loc9_)
                     {
                        §§goto(addr01bc);
                     }
                     §§goto(addr026b);
                  }
                  §§goto(addr0269);
               }
               §§goto(addr027b);
            }
            else
            {
               _loc2_ = §§nextvalue(_loc6_,_loc7_);
               if(_loc8_)
               {
                  §§push(_loc2_.planeObjectVo.groundDTO == null);
                  if(_loc8_ || Boolean(_loc3_))
                  {
                     §§push(!§§pop());
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        var _temp_21:* = §§pop();
                        §§push(_temp_21);
                        if(_temp_21)
                        {
                           if(!_loc9_)
                           {
                              addr0079:
                              §§pop();
                              if(!_loc8_)
                              {
                                 continue;
                              }
                              addr0080:
                              §§push(param1 == _loc2_.planeObjectVo.groundDTO.id);
                           }
                        }
                        addr008b:
                        if(§§pop())
                        {
                           if(_loc8_ || Boolean(this))
                           {
                              return _loc2_ as IPlaneObject;
                           }
                        }
                        continue;
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0080);
            }
         }
         while(true)
         {
            if(!§§pop())
            {
               if(_loc8_ || Boolean(_loc2_))
               {
                  §§goto(addr019c);
               }
               addr02fa:
               loop2:
               while(§§pop())
               {
                  _loc5_ = §§nextvalue(_loc6_,_loc7_);
                  §§push(_loc5_.objectVo.groundDTO == null);
                  if(!_loc9_)
                  {
                     §§push(!§§pop());
                     if(_loc8_)
                     {
                        var _temp_7:* = §§pop();
                        §§push(_temp_7);
                        if(_temp_7)
                        {
                           if(_loc8_ || Boolean(_loc2_))
                           {
                              addr02ba:
                              §§pop();
                              if(_loc8_)
                              {
                                 addr02d8:
                                 if(param1 == _loc5_.objectVo.groundDTO.id)
                                 {
                                    if(!(_loc9_ && Boolean(param1)))
                                    {
                                       return _loc5_ as IPlaneObject;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(§§hasnext(_loc7_,_loc6_));
                                 continue loop2;
                              }
                              addr02f1:
                           }
                        }
                        §§goto(addr02d8);
                     }
                     §§goto(addr02ba);
                  }
                  §§goto(addr02d8);
               }
               addr02fa:
               return null;
            }
            _loc3_ = §§nextvalue(_loc6_,_loc7_);
            if(_loc8_)
            {
               §§push(_loc3_.planeObjectVo.groundDTO == null);
               if(!_loc9_)
               {
                  §§push(!§§pop());
                  if(_loc8_ || Boolean(_loc3_))
                  {
                     addr0137:
                     var _temp_25:* = §§pop();
                     §§push(_temp_25);
                     if(_temp_25)
                     {
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           §§pop();
                           if(_loc8_ || Boolean(this))
                           {
                              addr0171:
                              if(param1 == _loc3_.planeObjectVo.groundDTO.id)
                              {
                                 if(_loc8_)
                                 {
                                    return _loc3_ as IPlaneObject;
                                 }
                              }
                           }
                           §§goto(addr0181);
                        }
                     }
                  }
                  §§goto(addr0171);
               }
               §§goto(addr0137);
            }
            §§goto(addr0181);
         }
         §§goto(addr02f4);
      }
      
      public function get objectList() : Vector.<IObject3D>
      {
         return this._object3DList;
      }
      
      public function addObjectToObjectList(param1:*) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:StreetObject = null;
         var _loc3_:SquareObject = null;
         var _loc4_:PierObject = null;
         var _loc5_:ResidentialFieldObject = null;
         if(_loc6_)
         {
            §§push(param1 is IObject3D);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     this._object3DList.push(param1 as IObject3D);
                     if(_loc6_)
                     {
                        this.configureObject3dListener(param1 as IObject3D);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           addr0076:
                           §§push(param1 is ClientFieldObject);
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    this._clientFieldObjectsList.push(param1);
                                    if(_loc6_)
                                    {
                                       §§push(param1 is BridgeFieldObject);
                                       if(_loc6_ || Boolean(_loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                this._bridgeFieldObject = param1;
                                                if(!(_loc7_ && Boolean(_loc2_)))
                                                {
                                                   addr00d9:
                                                   §§push(param1 is ITimerInterest);
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            this._timerList.push(param1);
                                                            if(_loc6_)
                                                            {
                                                               addr00fc:
                                                               §§push(param1 is IGameObjectVo);
                                                               if(_loc6_ || Boolean(_loc2_))
                                                               {
                                                                  addr010f:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc6_ || Boolean(_loc2_))
                                                                     {
                                                                        §§push((param1 as IGameObjectVo).configPlayfieldItemVo.moveable);
                                                                        if(_loc6_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 this._moveableList.push(param1);
                                                                                 if(!(_loc7_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    addr0152:
                                                                                    §§push(param1 is IInteraction);
                                                                                    if(_loc6_ || Boolean(_loc2_))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             this.configureInteratctiveListener(param1 as IInteraction);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                this._interactiveList.push(param1);
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   addr0196:
                                                                                                   §§push(param1 is BillboardObject);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr01a0:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            this.configureBuildingFieldEventsListener(param1 as BillboardObject);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               this._billboardList.push(param1 as BillboardObject);
                                                                                                               if(!(_loc7_ && param1))
                                                                                                               {
                                                                                                                  §§push((param1 as BillboardObject).billboardObjectVo.hasEmergency());
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           (param1 as BillboardObject).invalidateAnimationSlotManager();
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr0203:
                                                                                                                              §§push(param1 is ProductionFieldObject);
                                                                                                                              if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                    {
                                                                                                                                       §§push((param1 as ProductionFieldObject).productionFieldObjectVo);
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(this.eventProxy);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§pop().currentEventLocaleId = §§pop().currentRunningEventQuestLocaleId;
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                addr025a:
                                                                                                                                                (param1 as ProductionFieldObject).productionFieldObjectVo.currentRunningEventGFXId = this.eventProxy.currentRunningEventQuestGfxId;
                                                                                                                                                addr0255:
                                                                                                                                                addr024d:
                                                                                                                                                if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                                                                {
                                                                                                                                                   addr026e:
                                                                                                                                                   this._productionBuildingList.push(param1 as ProductionFieldObject);
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr0280:
                                                                                                                                                      §§push(param1 is ExpansionFieldObject);
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         addr028b:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               this._expansionList.push(param1 as ExpansionFieldObject);
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  addr02a7:
                                                                                                                                                                  §§push(param1 is DecorationFieldObject);
                                                                                                                                                                  if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                        {
                                                                                                                                                                           this._decorationList.push(param1 as DecorationFieldObject);
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              addr02de:
                                                                                                                                                                              §§push(param1 is MysteryBuildingFieldObject);
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       this.configureMysteryBuildingUnwrapEventsListener(param1 as MysteryBuildingFieldObject);
                                                                                                                                                                                       if(_loc6_ || Boolean(_loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0314:
                                                                                                                                                                                          §§push(param1 is BoulderFieldObject);
                                                                                                                                                                                          if(_loc6_ || Boolean(this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   this._boulderList.push(param1 as BoulderFieldObject);
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.checkAndSetBoulderOutcome(param1 as BoulderFieldObject);
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr035c:
                                                                                                                                                                                                         §§push(param1 is StreetObject);
                                                                                                                                                                                                         if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr0379:
                                                                                                                                                                                                                  §§push(this.planeProxy);
                                                                                                                                                                                                                  if(_loc6_ || Boolean(this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().addObject(param1 as PlaneObject);
                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc2_ = param1 as StreetObject;
                                                                                                                                                                                                                        if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this._streetObjectList.push(_loc2_);
                                                                                                                                                                                                                           if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this._pathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
                                                                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this._pathWalkProxy);
                                                                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc2_.streetObjectVo);
                                                                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop().configPlayfieldItemVo.driveable)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this._pathWalkProxy);
                                                                                                                                                                                                                                                   if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().pathwalkManager);
                                                                                                                                                                                                                                                      if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().terrain);
                                                                                                                                                                                                                                                         if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().setTileUsable(_loc2_.planeObjectVo.matrix3dCoordinates.x,_loc2_.planeObjectVo.matrix3dCoordinates.y,"driveable");
                                                                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr0468:
                                                                                                                                                                                                                                                               addr046c:
                                                                                                                                                                                                                                                               if(_loc2_.streetObjectVo.configPlayfieldItemVo.driveable)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this._pathWalkProxy);
                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().pathwalkManager);
                                                                                                                                                                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().terrain);
                                                                                                                                                                                                                                                                           if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr04b0:
                                                                                                                                                                                                                                                                              §§pop().setTileUsable(_loc2_.planeObjectVo.matrix3dCoordinates.x,_loc2_.planeObjectVo.matrix3dCoordinates.y,"walkable");
                                                                                                                                                                                                                                                                              if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr04e1:
                                                                                                                                                                                                                                                                                 this._pathWalkProxy.pathwalkManager.terrain.setTileUsable(_loc2_.planeObjectVo.matrix3dCoordinates.x,_loc2_.planeObjectVo.matrix3dCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
                                                                                                                                                                                                                                                                                 addr04de:
                                                                                                                                                                                                                                                                                 addr04db:
                                                                                                                                                                                                                                                                                 addr04d7:
                                                                                                                                                                                                                                                                                 if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr050b:
                                                                                                                                                                                                                                                                                    sendNotification(ApplicationNotificationConstants.GROUND_GENERATE_STREETS_TEXTURES_COMMAND,param1);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr0516:
                                                                                                                                                                                                                                                                                 §§push(param1 is SquareObject);
                                                                                                                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          this._pathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
                                                                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr0558:
                                                                                                                                                                                                                                                                                             §§push(this.planeProxy);
                                                                                                                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop().addObject(param1 as PlaneObject);
                                                                                                                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   this._squareObjectList.push(param1 as SquareObject);
                                                                                                                                                                                                                                                                                                   if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc3_ = param1 as SquareObject;
                                                                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this._pathWalkProxy);
                                                                                                                                                                                                                                                                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop().pathwalkManager);
                                                                                                                                                                                                                                                                                                            if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().terrain);
                                                                                                                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§pop().setTileUsable(_loc3_.planeObjectVo.matrix3dCoordinates.x,_loc3_.planeObjectVo.matrix3dCoordinates.y,"walkable");
                                                                                                                                                                                                                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr05f7:
                                                                                                                                                                                                                                                                                                                     this._pathWalkProxy.pathwalkManager.terrain.setTileUsable(_loc3_.planeObjectVo.matrix3dCoordinates.x,_loc3_.planeObjectVo.matrix3dCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
                                                                                                                                                                                                                                                                                                                     addr05f4:
                                                                                                                                                                                                                                                                                                                     addr05f1:
                                                                                                                                                                                                                                                                                                                     if(_loc6_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr0621:
                                                                                                                                                                                                                                                                                                                        sendNotification(ApplicationNotificationConstants.GROUND_GENERATE_TEXTURES_COMMAND,param1);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr062d:
                                                                                                                                                                                                                                                                                                                     §§push(param1 is PierObject);
                                                                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr0638:
                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc6_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr064a:
                                                                                                                                                                                                                                                                                                                              this._pathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
                                                                                                                                                                                                                                                                                                                              if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr066a:
                                                                                                                                                                                                                                                                                                                                 §§push(this.planeProxy);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr067c:
                                                                                                                                                                                                                                                                                                                                    §§pop().addObject(param1 as PierObject);
                                                                                                                                                                                                                                                                                                                                    if(_loc6_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc4_ = param1 as PierObject;
                                                                                                                                                                                                                                                                                                                                       if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          this._pierObjectList.push(_loc4_);
                                                                                                                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr06ba:
                                                                                                                                                                                                                                                                                                                                             §§push(this._pathWalkProxy);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop().pathwalkManager);
                                                                                                                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().terrain);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc4_.pierObjectVo);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§pop().setTileUsable(§§pop().matrix3dCoordinates.x,_loc4_.pierObjectVo.matrix3dCoordinates.y,"walkable");
                                                                                                                                                                                                                                                                                                                                                         if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr071c:
                                                                                                                                                                                                                                                                                                                                                            this._pathWalkProxy.pathwalkManager.terrain.setTileUsable(_loc4_.pierObjectVo.matrix3dCoordinates.x,_loc4_.pierObjectVo.matrix3dCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
                                                                                                                                                                                                                                                                                                                                                            addr0717:
                                                                                                                                                                                                                                                                                                                                                            addr0714:
                                                                                                                                                                                                                                                                                                                                                            addr0711:
                                                                                                                                                                                                                                                                                                                                                            addr070d:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr0735:
                                                                                                                                                                                                                                                                                                                                                         §§push(param1 is ShopFieldObject);
                                                                                                                                                                                                                                                                                                                                                         if(_loc6_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr0748:
                                                                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr0752:
                                                                                                                                                                                                                                                                                                                                                                  this._needMatrixProxy.addShop(param1 as ShopFieldObject);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr0765:
                                                                                                                                                                                                                                                                                                                                                                     this._needShopList.push(param1 as ShopFieldObject);
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr0777:
                                                                                                                                                                                                                                                                                                                                                                        §§push(param1 is ResidentialFieldObject);
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr0782:
                                                                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc7_ && param1))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr0794:
                                                                                                                                                                                                                                                                                                                                                                                 _loc5_ = param1 as ResidentialFieldObject;
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    this._needMatrixProxy.addResidential(_loc5_.residentialFieldObjectVo);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr07b7:
                                                                                                                                                                                                                                                                                                                                                                                       this._residentialList.push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr07c0:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(param1 is PlaneObject);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc6_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       var _temp_52:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_temp_52);
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_temp_52);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr07ec:
                                                                                                                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr07fb:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(param1 is StreetObject);
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc7_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr0815:
                                                                                                                                                                                                                                                                                                                                                                                                         var _temp_56:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         addr0816:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_temp_56);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_temp_56)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr0820:
                                                                                                                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr0827:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(param1 is SquareObject);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr0832:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr0839:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr0847:
                                                                                                                                                                                                                                                                                                                                                                                                                              this.planeProxy.addObject(param1 as PlaneObject);
                                                                                                                                                                                                                                                                                                                                                                                                                              addr0843:
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 this._groundObjectList.push(param1 as PlaneObject);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr0878:
                                                                                                                                                                                                                                                                                                                                                                                                                                    sendNotification(ApplicationNotificationConstants.GROUND_GENERATE_TEXTURES_COMMAND,param1);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc7_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr0892:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(param1 is CitySquareFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr089d:
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc7_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr08af:
                                                                                                                                                                                                                                                                                                                                                                                                                                                sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr08bf:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(param1 is IEmergencyInfrastructure);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr08ca:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr08d4:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            this._infrastructureInterfaceObjectsList.push(param1);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr08ea);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0a2d);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr09b5);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr08ea:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(param1 is InfrastructureBuildingFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc6_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               this._infrastructureBuildingList.push(param1 as InfrastructureBuildingFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr0921:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  sendNotification(ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0931);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr09f4);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0946);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0aa6);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr0931:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(param1 is ActivatorFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr093c:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr0946:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  this._activatorFieldObjectList.push(param1);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr095c);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr09b5);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0aa6);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr095c:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(param1 is PlayfieldSwitchFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr0967:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     this._playfieldSwitchObjectList.push(param1);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0987);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0aa6);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr09b5);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr0987:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr098c);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0967);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr09f4);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr08d4);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr08bf);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr098c:
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(param1 is CinemaFieldObject)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr099e:
                                                                                                                                                                                                                                                                                                                                                                                                                                             this._cinemaFieldObject = param1 as CinemaFieldObject;
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr09b5:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(this._cinemaFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop().cinemaFieldObjectVo);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.cinemaProxy);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().maxViews);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().maxViews = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr09f4:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this._cinemaFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop().cinemaFieldObjectVo);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.cinemaProxy);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0a1c);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0a62);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr0a50);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0a93);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0aa6);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr0a1c:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§pop().viewsToday = §§pop().videosWatchedToday;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr0a2d:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(this._cinemaFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop().cinemaFieldObjectVo);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr0a50:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(this.cinemaProxy);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr0a62:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop().disabledByAID);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().disabled = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this._cinemaFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr0a9d);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr0aaa);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0aa6);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr0a9d:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop().cinemaFieldObjectVo.inMaintenance = this.cinemaProxy.inMaintenance;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0a9a);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr0a9a:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr0a96);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr0a96:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr0a93:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr0aaa:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  this._cinemaFieldObject.invalidateIconStateManager();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr0aa6:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0aae);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0aaa);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr0aae);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0a62);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0a50);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr0a93);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr0a2d);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr09b5);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr0aae);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0921);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr0aae);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr08af);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr09f4);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0892);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr089d);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr08ca);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr099e);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr089d);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr0839);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0967);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr098c);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr0892);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr089d);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr0815);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr0816);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr089d);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr07b7);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr0921);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr07c0);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0820);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0878);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr0892);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0931);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0777);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr098c);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr071c);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0717);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr0714);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr0711);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr070d);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr06ba);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr08d4);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr0847);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr0765);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr0aa6);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr0735);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr0820);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr0621);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr05f7);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr05f4);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr05f1);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr0621);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr0892);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr0878);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr0847);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr09b5);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr062d);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr0638);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr050b);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr04e1);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr04de);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr04db);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr04d7);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr0516);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr04b0);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr04de);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr04db);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr0516);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0468);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr046c);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0516);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr04db);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0516);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0468);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0516);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr064a);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr067c);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr08ea);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0516);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0839);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0765);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0946);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0a2d);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr035c);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0782);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0aa6);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0987);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0314);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr093c);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0a2d);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr095c);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr02de);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0820);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr07fb);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0752);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr02a7);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0839);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0765);
                                                                                                                                                }
                                                                                                                                                §§goto(addr066a);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0794);
                                                                                                                                          }
                                                                                                                                          §§goto(addr025a);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0255);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0987);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0280);
                                                                                                                              }
                                                                                                                              §§goto(addr028b);
                                                                                                                           }
                                                                                                                           §§goto(addr0558);
                                                                                                                        }
                                                                                                                        §§goto(addr0379);
                                                                                                                     }
                                                                                                                     §§goto(addr0203);
                                                                                                                  }
                                                                                                                  §§goto(addr028b);
                                                                                                               }
                                                                                                               §§goto(addr035c);
                                                                                                            }
                                                                                                            §§goto(addr0843);
                                                                                                         }
                                                                                                         §§goto(addr024d);
                                                                                                      }
                                                                                                      §§goto(addr0203);
                                                                                                   }
                                                                                                   §§goto(addr0832);
                                                                                                }
                                                                                                §§goto(addr0946);
                                                                                             }
                                                                                             §§goto(addr07fb);
                                                                                          }
                                                                                          §§goto(addr0280);
                                                                                       }
                                                                                       §§goto(addr0196);
                                                                                    }
                                                                                    §§goto(addr0748);
                                                                                 }
                                                                                 addr0aae:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr0794);
                                                                           }
                                                                           §§goto(addr0152);
                                                                        }
                                                                        §§goto(addr0839);
                                                                     }
                                                                     §§goto(addr0280);
                                                                  }
                                                                  §§goto(addr0152);
                                                               }
                                                               §§goto(addr01a0);
                                                            }
                                                            §§goto(addr026e);
                                                         }
                                                         §§goto(addr0921);
                                                      }
                                                      §§goto(addr00fc);
                                                   }
                                                   §§goto(addr0820);
                                                }
                                                §§goto(addr0827);
                                             }
                                             §§goto(addr0379);
                                          }
                                          §§goto(addr00d9);
                                       }
                                       §§goto(addr07ec);
                                    }
                                    §§goto(addr0777);
                                 }
                                 §§goto(addr024d);
                              }
                              §§goto(addr00d9);
                           }
                           §§goto(addr010f);
                        }
                        §§goto(addr095c);
                     }
                     §§goto(addr0280);
                  }
                  §§goto(addr024d);
               }
               §§goto(addr0076);
            }
            §§goto(addr028b);
         }
         §§goto(addr0921);
      }
      
      private function get eventProxy() : EventProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._ePro);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     this._ePro = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                  }
               }
               addr004d:
               return this._ePro;
            }
         }
         §§goto(addr004d);
      }
      
      public function removeObjectFromObjectList(param1:*) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:StreetObject = null;
         var _loc3_:Vector.<StreetObjectVo> = null;
         var _loc4_:StreetObjectVo = null;
         var _loc5_:StreetObject = null;
         var _loc6_:SquareObject = null;
         if(!_loc10_)
         {
            §§push(param1 is IObject3D);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && param1))
                  {
                     this._object3DList.splice(this._object3DList.indexOf(param1 as IObject3D),1);
                     if(_loc9_)
                     {
                        this.deconfigureObject3dListener(param1 as IObject3D);
                        if(_loc9_)
                        {
                           addr0082:
                           §§push(param1 is ShopFieldObject);
                           if(!_loc10_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    §§push(this._needMatrixProxy);
                                    if(_loc9_ || Boolean(this))
                                    {
                                       §§pop().removeShop(param1 as ShopFieldObject);
                                       if(!(_loc10_ && param1))
                                       {
                                          addr00c0:
                                          §§push(param1 is DecorationFieldObject);
                                          if(_loc9_ || Boolean(this))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   this._decorationList.splice(this._decorationList.indexOf(param1),1);
                                                   if(!(_loc10_ && Boolean(_loc3_)))
                                                   {
                                                      addr00fe:
                                                      §§push(param1 is ClientFieldObjectVo);
                                                      if(_loc9_ || Boolean(_loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               addr011b:
                                                               this._clientFieldObjectsList.splice(this._clientFieldObjectsList.indexOf(param1),1);
                                                               if(!_loc10_)
                                                               {
                                                                  addr0134:
                                                                  §§push(param1 is BridgeFieldObject);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           this._bridgeFieldObject = null;
                                                                           if(_loc9_)
                                                                           {
                                                                              addr015c:
                                                                              §§push(param1 is ProductionFieldObject);
                                                                              if(_loc9_ || Boolean(this))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc9_ || Boolean(this))
                                                                                    {
                                                                                       this._productionBuildingList.splice(this._productionBuildingList.indexOf(param1),1);
                                                                                       if(_loc9_ || Boolean(this))
                                                                                       {
                                                                                          addr01a2:
                                                                                          §§push(param1 is ResidentialFieldObject);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr01ad:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc9_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   addr01bf:
                                                                                                   this._residentialList.splice(this._residentialList.indexOf(param1),1);
                                                                                                   if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      addr01e4:
                                                                                                      this._needMatrixProxy.removeResidential((param1 as ResidentialFieldObject).residentialFieldObjectVo);
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         addr01fe:
                                                                                                         §§push(param1 is IGameObject);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  addr0213:
                                                                                                                  §§push((param1 as IGameObject).gameObjectVo);
                                                                                                                  if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc9_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           addr023b:
                                                                                                                           §§push((param1 as IGameObject).gameObjectVo);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr0249:
                                                                                                                              §§push(§§pop().configPlayfieldItemVo);
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc10_ && param1))
                                                                                                                                    {
                                                                                                                                       addr026f:
                                                                                                                                       addr026c:
                                                                                                                                       addr0264:
                                                                                                                                       §§push((param1 as IGameObject).gameObjectVo.configPlayfieldItemVo.moveable);
                                                                                                                                       if(!(_loc10_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          addr0280:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                             {
                                                                                                                                                this._moveableList.splice(this._moveableList.indexOf(param1),1);
                                                                                                                                                if(_loc9_ || Boolean(this))
                                                                                                                                                {
                                                                                                                                                   addr02b3:
                                                                                                                                                   §§push(param1 is IInteraction);
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            addr02c8:
                                                                                                                                                            this.deconfigureInteratctiveListener(param1 as IInteraction);
                                                                                                                                                            if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                            {
                                                                                                                                                               addr02e1:
                                                                                                                                                               this._interactiveList.splice(this._interactiveList.indexOf(param1),1);
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  addr02fa:
                                                                                                                                                                  §§push(param1 is BillboardObject);
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0304:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           this._billboardList.splice(this._billboardList.indexOf(param1),1);
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              addr0327:
                                                                                                                                                                              this.deconfigureBuildingFieldEventsListener(param1 as BillboardObject);
                                                                                                                                                                              if(_loc9_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr033f:
                                                                                                                                                                                 §§push(param1 is MysteryBuildingFieldObject);
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr034a:
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr035c:
                                                                                                                                                                                          this.deconfigureMysteryBuildingUnwrapEventsListener(param1 as MysteryBuildingFieldObject);
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr036d:
                                                                                                                                                                                             §§push(param1 is ShopFieldObject);
                                                                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0380:
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc9_ || Boolean(this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0392:
                                                                                                                                                                                                      this._needShopList.splice(this._needShopList.indexOf(param1),1);
                                                                                                                                                                                                      if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr03b3:
                                                                                                                                                                                                         §§push(param1 is ExpansionFieldObject);
                                                                                                                                                                                                         if(!(_loc10_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr03c6:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr03d0:
                                                                                                                                                                                                                  this._expansionList.splice(this._expansionList.indexOf(param1),1);
                                                                                                                                                                                                                  if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr03f1:
                                                                                                                                                                                                                     §§push(param1 is BoulderFieldObject);
                                                                                                                                                                                                                     if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0404:
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this._boulderList.splice(this._boulderList.indexOf(param1),1);
                                                                                                                                                                                                                              addr040e:
                                                                                                                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr043c:
                                                                                                                                                                                                                                 addr0441:
                                                                                                                                                                                                                                 if(param1 is StreetObject)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0453:
                                                                                                                                                                                                                                       this.planeProxy.removeObject(param1 as PlaneObject);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr0460:
                                                                                                                                                                                                                                    _loc2_ = this._streetObjectList.splice(this._streetObjectList.indexOf(param1),1)[0];
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc2_.streetObjectVo);
                                                                                                                                                                                                                                       if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Boolean(§§pop().configPlayfieldItemVo.driveable));
                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             var _temp_32:* = §§pop();
                                                                                                                                                                                                                                             §§push(_temp_32);
                                                                                                                                                                                                                                             if(_temp_32)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr04ac:
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr04bb:
                                                                                                                                                                                                                                                      §§push(_loc2_.streetObjectVo);
                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr04cc:
                                                                                                                                                                                                                                                         if(Boolean(§§pop().configPlayfieldItemVo.walkable))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc9_ || Boolean(this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr04de:
                                                                                                                                                                                                                                                               §§push(_loc2_.streetObjectVo);
                                                                                                                                                                                                                                                               if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop().configPlayfieldItemVo.driveable)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr0500:
                                                                                                                                                                                                                                                                        addr0504:
                                                                                                                                                                                                                                                                        if(_loc2_.streetObjectVo.configPlayfieldItemVo.walkable)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr050e:
                                                                                                                                                                                                                                                                     _loc3_ = this.getSurroundingStreets(_loc2_.streetObjectVo);
                                                                                                                                                                                                                                                                     for each(_loc4_ in _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc4_.groundDTO)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc5_ = StreetObject(this.getPlaneObjectById(_loc4_.groundDTO.id));
                                                                                                                                                                                                                                                                           if(_loc5_ != null)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 sendNotification(ApplicationNotificationConstants.GROUND_GENERATE_STREETS_TEXTURES_COMMAND,_loc5_);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr0576:
                                                                                                                                                                                                                                                                     §§push(param1 is SquareObject);
                                                                                                                                                                                                                                                                     if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc6_ = param1 as SquareObject;
                                                                                                                                                                                                                                                                              §§push(_loc6_.squareObjectVo);
                                                                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Boolean(§§pop().configPlayfieldItemVo.driveable));
                                                                                                                                                                                                                                                                                 if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    var _temp_41:* = §§pop();
                                                                                                                                                                                                                                                                                    §§push(_temp_41);
                                                                                                                                                                                                                                                                                    if(_temp_41)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                          if(_loc9_ || Boolean(this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc6_.squareObjectVo);
                                                                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr05f0:
                                                                                                                                                                                                                                                                                                if(Boolean(§§pop().configPlayfieldItemVo.walkable))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr05fa:
                                                                                                                                                                                                                                                                                                      §§push(_loc6_.squareObjectVo);
                                                                                                                                                                                                                                                                                                      if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr060d:
                                                                                                                                                                                                                                                                                                         if(§§pop().configPlayfieldItemVo.driveable)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr061d:
                                                                                                                                                                                                                                                                                                               addr0622:
                                                                                                                                                                                                                                                                                                               if(_loc6_.squareObjectVo.configPlayfieldItemVo.walkable)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr0632:
                                                                                                                                                                                                                                                                                                                     this.planeProxy.removeObject(param1 as PlaneObject);
                                                                                                                                                                                                                                                                                                                     if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr064d:
                                                                                                                                                                                                                                                                                                                        this._squareObjectList.splice(this._squareObjectList.indexOf(param1),1);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr0660:
                                                                                                                                                                                                                                                                                                                     §§push(param1 is PierObject);
                                                                                                                                                                                                                                                                                                                     if(_loc9_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr067d:
                                                                                                                                                                                                                                                                                                                              this._pierObjectList.splice(this._pierObjectList.indexOf(param1),1);
                                                                                                                                                                                                                                                                                                                              if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr069e:
                                                                                                                                                                                                                                                                                                                                 §§push(param1 is PlaneObject);
                                                                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    var _temp_48:* = §§pop();
                                                                                                                                                                                                                                                                                                                                    §§push(_temp_48);
                                                                                                                                                                                                                                                                                                                                    §§push(_temp_48);
                                                                                                                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                                                                             if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(param1 is StreetObject);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr06eb:
                                                                                                                                                                                                                                                                                                                                                      var _temp_52:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                      addr06ec:
                                                                                                                                                                                                                                                                                                                                                      §§push(_temp_52);
                                                                                                                                                                                                                                                                                                                                                      if(_temp_52)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr06fe:
                                                                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(param1 is SquareObject);
                                                                                                                                                                                                                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr0720:
                                                                                                                                                                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr072f:
                                                                                                                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           this.planeProxy.removeObject(param1 as PlaneObject);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              this._groundObjectList.splice(this._groundObjectList.indexOf(param1),1);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr077d:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(param1 is IEmergencyInfrastructure);
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr0790:
                                                                                                                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          this._infrastructureInterfaceObjectsList.splice(this._infrastructureInterfaceObjectsList.indexOf(param1),1);
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr07bb:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(param1 is InfrastructureBuildingFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr07c6:
                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      this._infrastructureBuildingList.splice(this._infrastructureBuildingList.indexOf(param1),1);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr07e9:
                                                                                                                                                                                                                                                                                                                                                                                                         sendNotification(ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0801);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr0826);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0801);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0826);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr0801:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(param1 is ActivatorFieldObject);
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr0814:
                                                                                                                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc9_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         this._activatorFieldObjectList.splice(this._activatorFieldObjectList.indexOf(param1),1);
                                                                                                                                                                                                                                                                                                                                                                                                         addr0826:
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr084c);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0863);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   addr084c:
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0851);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr0851:
                                                                                                                                                                                                                                                                                                                                                                                                if(param1 is CinemaFieldObject)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr0863:
                                                                                                                                                                                                                                                                                                                                                                                                      this._cinemaFieldObject = null;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr0868);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr0814);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr0826);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr07bb);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr0814);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr0868);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr0826);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr077d);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr0790);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr072f);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr07bb);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr072f);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0790);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr0814);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr07e9);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr072f);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr06eb);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr06ec);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr07c6);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr07e9);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr0868:
                                                                                                                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr069e);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr0720);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr064d);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr0632);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr0660);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr061d);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr0622);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr0660);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr05fa);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr060d);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr05fa);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr05f0);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr0622);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr067d);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr0660);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr06fe);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr0500);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr0504);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr050e);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr04de);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr0504);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr04de);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr04cc);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr04ac);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0504);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr04bb);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0576);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0460);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0453);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr043c);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0441);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0453);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr040e);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr03f1);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0441);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr043c);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr03f1);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr03b3);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0441);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0453);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr03b3);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr036d);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0380);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr035c);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr043c);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr033f);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr034a);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr035c);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0327);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0460);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02fa);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0304);
                                                                                                                                                }
                                                                                                                                                §§goto(addr03b3);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0392);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02b3);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0404);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0460);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02b3);
                                                                                                                              }
                                                                                                                              §§goto(addr026f);
                                                                                                                           }
                                                                                                                           §§goto(addr026c);
                                                                                                                        }
                                                                                                                        §§goto(addr02e1);
                                                                                                                     }
                                                                                                                     §§goto(addr02b3);
                                                                                                                  }
                                                                                                                  §§goto(addr0249);
                                                                                                               }
                                                                                                               §§goto(addr033f);
                                                                                                            }
                                                                                                            §§goto(addr02b3);
                                                                                                         }
                                                                                                         §§goto(addr0280);
                                                                                                      }
                                                                                                      §§goto(addr036d);
                                                                                                   }
                                                                                                   §§goto(addr0392);
                                                                                                }
                                                                                                §§goto(addr03d0);
                                                                                             }
                                                                                             §§goto(addr01fe);
                                                                                          }
                                                                                          §§goto(addr03c6);
                                                                                       }
                                                                                       §§goto(addr02b3);
                                                                                    }
                                                                                    §§goto(addr035c);
                                                                                 }
                                                                                 §§goto(addr01a2);
                                                                              }
                                                                              §§goto(addr0441);
                                                                           }
                                                                           §§goto(addr0453);
                                                                        }
                                                                     }
                                                                     §§goto(addr015c);
                                                                  }
                                                                  §§goto(addr0404);
                                                               }
                                                               §§goto(addr02c8);
                                                            }
                                                            §§goto(addr03d0);
                                                         }
                                                         §§goto(addr015c);
                                                      }
                                                      §§goto(addr0304);
                                                   }
                                                   §§goto(addr0213);
                                                }
                                                §§goto(addr01bf);
                                             }
                                             §§goto(addr00fe);
                                          }
                                          §§goto(addr0441);
                                       }
                                       §§goto(addr0264);
                                    }
                                    §§goto(addr01e4);
                                 }
                                 §§goto(addr0327);
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr01ad);
                        }
                        §§goto(addr011b);
                     }
                     §§goto(addr0392);
                  }
                  §§goto(addr0134);
               }
               §§goto(addr0082);
            }
            §§goto(addr0380);
         }
         §§goto(addr023b);
      }
      
      private function checkAndSetBoulderOutcome(param1:BoulderFieldObject) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:PhaseDTO = null;
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         if(_loc9_)
         {
            if(param1.boulderObjectVo.activePhases.length > 0)
            {
               addr003b:
               for each(_loc2_ in param1.boulderObjectVo.activePhases)
               {
                  if(!(_loc10_ && Boolean(param1)))
                  {
                     if(_loc2_.config.phaseType != ServerPhaseTypes.DESTRUCTIONPHASE_REMOVE_BOULDER)
                     {
                        continue;
                     }
                     if(!(_loc10_ && Boolean(_loc2_)))
                     {
                        addr0083:
                        if(_loc2_.expirationTime <= 0)
                        {
                           continue;
                        }
                        if(_loc9_)
                        {
                           addr0093:
                           §§push(param1.boulderObjectVo);
                           if(!(_loc10_ && Boolean(_loc2_)))
                           {
                              if(§§pop().boulderVo.currentOutput)
                              {
                                 if(!_loc10_)
                                 {
                                    addr00b5:
                                    _loc3_ = new ConfigPhaseDTO(null);
                                    if(_loc9_)
                                    {
                                       _loc3_.listEntryOutputs = param1.boulderObjectVo.boulderVo.currentOutput;
                                       if(_loc9_ || Boolean(_loc2_))
                                       {
                                          var _loc7_:int = 0;
                                          if(!_loc10_)
                                          {
                                             for each(_loc4_ in _loc3_.listEntryOutputs)
                                             {
                                                §§push(_loc4_.type);
                                                if(_loc9_)
                                                {
                                                   §§push(ServerOutputConstants.GOOD);
                                                   if(_loc9_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!(_loc9_ || Boolean(param1)))
                                                         {
                                                            continue;
                                                         }
                                                         _loc4_.goodConfig = this._gameConfigProxy.config.goods[_loc4_.configId];
                                                         if(!(_loc10_ && Boolean(_loc2_)))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0169:
                                                         addr0163:
                                                         if(_loc4_.type != ServerOutputConstants.RESOURCE)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc9_ || Boolean(this)))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      _loc4_.resourceConfig = this._gameConfigProxy.config.resources[_loc4_.configId];
                                                      continue;
                                                   }
                                                   §§goto(addr0169);
                                                }
                                                §§goto(addr0163);
                                             }
                                          }
                                          if(!(_loc9_ || Boolean(_loc2_)))
                                          {
                                             break;
                                          }
                                       }
                                       param1.boulderObjectVo.informationFloaterPhase = _loc3_;
                                    }
                                 }
                                 break;
                              }
                              §§push(param1.boulderObjectVo);
                           }
                           §§pop().informationFloaterPhase = new ConfigPhaseDTO(null);
                           break;
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0083);
               }
            }
            param1.invalidateIconStateManager();
            return;
         }
         §§goto(addr003b);
      }
      
      private function configureInteratctiveListener(param1:IInteraction) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            param1.addEventListener(InteractiveObjectEvent.ON_INTERACTIVEVALUE_CHECK,this.onInteractiveValueCheck);
            if(!(_loc2_ && _loc2_))
            {
               param1.addEventListener(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this.onInteractiveClick);
               if(_loc3_)
               {
                  param1.addEventListener(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOUT,this.onInteractiveRollOut);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0083:
                     param1.addEventListener(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOVER,this.onInteractiveRollOver);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0083);
            }
            addr0093:
            return;
         }
         §§goto(addr0083);
      }
      
      private function deconfigureInteratctiveListener(param1:IInteraction) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            param1.removeEventListener(InteractiveObjectEvent.ON_INTERACTIVEVALUE_CHECK,this.onInteractiveValueCheck);
            if(_loc3_)
            {
               param1.removeEventListener(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this.onInteractiveClick);
               addr0040:
               if(!_loc2_)
               {
                  param1.removeEventListener(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOUT,this.onInteractiveRollOut);
                  if(_loc3_ || Boolean(param1))
                  {
                     addr007a:
                     param1.removeEventListener(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOVER,this.onInteractiveRollOver);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr007a);
            }
            addr008a:
            return;
         }
         §§goto(addr0040);
      }
      
      private function configureBuildingFieldEventsListener(param1:IInteraction) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            param1.addEventListener(BuildingObjectEvent.OFFSET_CHANGED,this.onBuildingOffsetChanged);
         }
      }
      
      private function deconfigureBuildingFieldEventsListener(param1:IInteraction) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            param1.removeEventListener(BuildingObjectEvent.OFFSET_CHANGED,this.onBuildingOffsetChanged);
         }
      }
      
      private function configureMysteryBuildingUnwrapEventsListener(param1:MysteryBuildingFieldObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            param1.addEventListener(BuildingObjectEvent.MYSTERY_UNWRAP_PROGRESS_CHANGED,this.onMysteryBuildingUnwrapChanged);
         }
      }
      
      private function deconfigureMysteryBuildingUnwrapEventsListener(param1:MysteryBuildingFieldObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            param1.removeEventListener(BuildingObjectEvent.MYSTERY_UNWRAP_PROGRESS_CHANGED,this.onMysteryBuildingUnwrapChanged);
         }
      }
      
      private function configureObject3dListener(param1:IObject3D) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            param1.addEventListener(Object3dEvent.ON_POSITION_UPDATE,this.onObject3dPositionUpdate);
         }
      }
      
      private function deconfigureObject3dListener(param1:IObject3D) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            param1.removeEventListener(Object3dEvent.ON_POSITION_UPDATE,this.onObject3dPositionUpdate);
         }
      }
      
      private function onInteractiveRollOver(param1:InteractiveObjectEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._playfieldInteractiveProxy.setRollOverObjectAndEvent(param1.data as IInteraction,param1.iconEvent);
         }
      }
      
      private function onInteractiveRollOut(param1:InteractiveObjectEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(this._playfieldInteractiveProxy);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§pop().setRollOverObjectAndEvent(null,false);
               if(_loc2_ || _loc2_)
               {
                  addr005e:
                  this._playfieldInteractiveProxy.setRollOutObjectAndEvent(param1.data as IInteraction,param1.iconEvent);
               }
               §§goto(addr006e);
            }
            §§goto(addr005e);
         }
         addr006e:
      }
      
      public function onInteractiveClick(param1:InteractiveObjectEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._playfieldInteractiveProxy.clickObject = param1.data as IInteraction;
         }
      }
      
      private function onInteractiveValueCheck(param1:InteractiveObjectEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            sendNotification(ApplicationNotificationConstants.WARN_USER,null);
         }
      }
      
      private function onBuildingOffsetChanged(param1:BuildingObjectEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,param1.data);
         }
      }
      
      private function onMysteryBuildingUnwrapChanged(param1:BuildingObjectEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.END_MYSTERYBUILDING_UNWRAP,param1.data);
            if(!(_loc3_ && Boolean(this)))
            {
               addr0030:
               this.onWhiteBlendAnimation();
            }
            return;
         }
         §§goto(addr0030);
      }
      
      private function onWhiteBlendAnimation() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            sendNotification(ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_IN);
            if(!_loc1_)
            {
               sendNotification(ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_OUT);
            }
         }
      }
      
      private function onObject3dPositionUpdate(param1:Object3dEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,param1.target);
         }
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
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:StreetObject = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this._streetObjectList)
         {
            if(_loc6_)
            {
               if(_loc2_.streetObjectVo == param1)
               {
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function objectAtIsPlaneObjOrFree(param1:Cuboid) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:IGameObjectVo = null;
         if(!_loc7_)
         {
            param1.traceMe();
         }
         var _loc2_:* = true;
         var _loc4_:int = 0;
         var _loc5_:* = this.getGameObjectsByCuboid(param1);
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc6_ || Boolean(_loc3_))
               {
                  §§push(_loc3_ == null);
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           addr007f:
                           §§pop();
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(_loc3_ is PlaneObjectVo);
                              if(_loc6_)
                              {
                                 addr0099:
                                 var _temp_5:* = §§pop();
                                 addr009a:
                                 §§push(_temp_5);
                                 if(_temp_5)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§pop();
                                    if(!(_loc6_ || Boolean(param1)))
                                    {
                                       continue;
                                    }
                                    addr00b3:
                                    §§push(_loc3_.configPlayfieldItemVo.destroyable);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    addr00c0:
                                    §§push(§§pop());
                                    if(_loc7_ && _loc2_)
                                    {
                                       break;
                                    }
                                 }
                                 if(!§§pop())
                                 {
                                    §§push(false);
                                    break;
                                 }
                                 if(_loc6_)
                                 {
                                    addr00e8:
                                    §§push(true);
                                    if(!(_loc6_ || _loc2_))
                                    {
                                       break;
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc7_)
                                    {
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00e8);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr00b3);
            }
            return _loc2_;
         }
         return §§pop();
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
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:BillboardObject = null;
         for each(_loc1_ in this._billboardList)
         {
            if(!_loc5_)
            {
               if(_loc1_ is CitySquareFieldObject)
               {
                  if(!_loc5_)
                  {
                     return _loc1_ as CitySquareFieldObject;
                  }
               }
            }
         }
         return null;
      }
      
      public function getTownHall() : TownHallFieldObject
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:BillboardObject = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this._activatorFieldObjectList)
         {
            if(_loc4_ || Boolean(_loc2_))
            {
               if(_loc1_ is TownHallFieldObject)
               {
                  if(_loc4_)
                  {
                     return _loc1_ as TownHallFieldObject;
                  }
               }
            }
         }
         return null;
      }
      
      public function getAcademyList() : Vector.<AcademyFieldObject>
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:BillboardObject = null;
         var _loc1_:Vector.<AcademyFieldObject> = new Vector.<AcademyFieldObject>();
         for each(_loc2_ in this._billboardList)
         {
            if(!_loc6_)
            {
               if(_loc2_ is AcademyFieldObject)
               {
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc1_.push(_loc2_ as AcademyFieldObject);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function getCurrentActivatorFieldObject() : ActivatorFieldObject
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._activatorFieldObjectList == null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr0035:
                  §§push(null);
                  if(_loc1_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0053:
                  if(this._activatorFieldObjectList.length > 0)
                  {
                     if(!_loc2_)
                     {
                        return this._activatorFieldObjectList[0];
                     }
                  }
                  return null;
               }
               return §§pop();
            }
            §§goto(addr0053);
         }
         §§goto(addr0035);
      }
      
      private function getSurroundingStreets(param1:StreetObjectVo) : Vector.<StreetObjectVo>
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc2_:Vector.<StreetObjectVo> = new Vector.<StreetObjectVo>();
         if(!_loc5_)
         {
            §§push(param1.matrix3dCoordinates.x + 1);
            if(_loc6_)
            {
               _loc3_ = §§pop();
               if(_loc6_)
               {
                  §§push(param1.matrix3dCoordinates.y);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     _loc4_ = §§pop();
                     if(!_loc5_)
                     {
                        addr0063:
                        §§push(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)));
                        if(_loc6_)
                        {
                           §§push(§§pop() is StreetObjectVo);
                           if(!_loc5_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    _loc2_.push(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)));
                                    if(_loc6_)
                                    {
                                       addr00b1:
                                       §§push(param1.matrix3dCoordinates.x - 1);
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          §§push(§§pop());
                                          if(_loc6_)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc6_ || Boolean(this))
                                             {
                                                §§push(param1.matrix3dCoordinates.y);
                                                if(_loc6_)
                                                {
                                                   §§goto(addr00e9);
                                                }
                                                §§goto(addr020b);
                                             }
                                             §§goto(addr01a0);
                                          }
                                       }
                                       addr00e9:
                                       _loc4_ = §§pop();
                                       if(!_loc5_)
                                       {
                                          §§push(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)));
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() is StreetObjectVo);
                                             if(!(_loc5_ && Boolean(_loc2_)))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      _loc2_.push(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)));
                                                      if(!(_loc5_ && Boolean(this)))
                                                      {
                                                         addr015c:
                                                         §§push(param1.matrix3dCoordinates.x);
                                                         if(_loc6_ || Boolean(_loc2_))
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(_loc6_ || Boolean(param1))
                                                            {
                                                               addr0180:
                                                               §§push(param1.matrix3dCoordinates.y + 1);
                                                               if(_loc6_)
                                                               {
                                                                  addr0190:
                                                                  _loc4_ = §§pop();
                                                                  if(_loc6_ || Boolean(param1))
                                                                  {
                                                                     addr01a0:
                                                                     §§push(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)));
                                                                     if(_loc6_)
                                                                     {
                                                                        addr01bb:
                                                                        §§push(§§pop() is StreetObjectVo);
                                                                        if(!(_loc5_ && Boolean(this)))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc6_ || Boolean(param1))
                                                                              {
                                                                                 _loc2_.push(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)));
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr01fe:
                                                                                    §§push(param1.matrix3dCoordinates.x);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr020b:
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc6_ || Boolean(param1))
                                                                                       {
                                                                                          §§goto(addr0228);
                                                                                       }
                                                                                       §§goto(addr0238);
                                                                                    }
                                                                                    addr0228:
                                                                                 }
                                                                                 §§goto(addr021a);
                                                                              }
                                                                              §§goto(addr0268);
                                                                           }
                                                                           §§goto(addr01fe);
                                                                        }
                                                                        §§goto(addr025e);
                                                                     }
                                                                     §§goto(addr025a);
                                                                  }
                                                                  §§goto(addr01fe);
                                                               }
                                                               §§goto(addr0228);
                                                            }
                                                            §§goto(addr01fe);
                                                         }
                                                         §§goto(addr020b);
                                                      }
                                                      §§goto(addr021a);
                                                   }
                                                   §§goto(addr0238);
                                                }
                                                §§goto(addr015c);
                                             }
                                             §§goto(addr025e);
                                          }
                                          §§goto(addr01bb);
                                       }
                                       §§goto(addr021a);
                                    }
                                    §§goto(addr01a0);
                                 }
                                 addr021a:
                                 §§push(param1.matrix3dCoordinates.y - 1);
                                 if(!_loc5_)
                                 {
                                    addr0227:
                                    §§push(§§pop());
                                 }
                                 _loc4_ = §§pop();
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    addr0238:
                                    addr025e:
                                    addr025a:
                                    if(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)) is StreetObjectVo)
                                    {
                                       if(_loc6_)
                                       {
                                          addr0268:
                                          _loc2_.push(this.getGameObjectByCuboid(new Cuboid(_loc3_,_loc4_,0,1,1,1)));
                                       }
                                    }
                                 }
                                 return _loc2_;
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr025e);
                        }
                        §§goto(addr025a);
                     }
                     §§goto(addr01fe);
                  }
                  §§goto(addr0227);
               }
               §§goto(addr0063);
            }
            §§goto(addr0190);
         }
         §§goto(addr0180);
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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:InfrastructureBuildingFieldObject = null;
         var _loc2_:Vector.<InfrastructureBuildingFieldObject> = new Vector.<InfrastructureBuildingFieldObject>();
         for each(_loc3_ in this._infrastructureBuildingList)
         {
            if(_loc7_)
            {
               if(_loc3_.emergencyFieldObjectVo.department.indexOf(param1) != -1)
               {
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc2_.push(_loc3_);
                  }
               }
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._cP);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this._cP = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
                  }
               }
               addr0054:
               return this._cP;
            }
         }
         §§goto(addr0054);
      }
      
      public function get clientFieldObjectsList() : Vector.<ClientFieldObject>
      {
         return this._clientFieldObjectsList;
      }
      
      private function get planeProxy() : PlaneProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._planeProxy);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0043:
                     this._planeProxy = facade.retrieveProxy(PlaneProxy.NAME) as PlaneProxy;
                  }
               }
               return this._planeProxy;
            }
         }
         §§goto(addr0043);
      }
   }
}

