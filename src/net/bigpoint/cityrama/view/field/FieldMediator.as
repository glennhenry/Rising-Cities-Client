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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "FieldMediator";
      }
      
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
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            super(param1,param2);
            if(_loc5_ || Boolean(this))
            {
               this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
               if(_loc5_ || _loc3_)
               {
                  this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  if(!(_loc6_ && _loc3_))
                  {
                     this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                     if(!_loc6_)
                     {
                        addr0083:
                        this._urbiesProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
                        if(_loc5_ || Boolean(this))
                        {
                           this._playfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
                           addr00a3:
                           if(_loc5_ || Boolean(this))
                           {
                              this._playFieldHighlightedObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
                              if(_loc5_)
                              {
                                 addr00ea:
                                 this._timerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
                              }
                           }
                           addr00ff:
                           var _loc3_:FilePreloadServiceProxy = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
                           var _loc4_:FileRuntimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              this._buildingFactory = new GameObjectFactory(_loc3_.service,_loc4_.service,this._gameConfigProxy.config.tags);
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 addr0168:
                                 UrbieFactory.init(_loc3_.service,_loc4_.service);
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    this.buildField();
                                 }
                              }
                              return;
                           }
                           §§goto(addr0168);
                        }
                        §§goto(addr00ea);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr00ea);
            }
            §§goto(addr00a3);
         }
         §§goto(addr00ff);
      }
      
      private function buildField() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this._buffCoverageGridView = new BuffCoverageGridView();
            if(!(_loc2_ && _loc2_))
            {
               §§push(this._buffCoverageGridView);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§pop().setSize(1,1,0);
                  if(_loc1_ || _loc2_)
                  {
                     addr0060:
                     this._buffCoverageGridView.container.visible = false;
                     if(_loc1_)
                     {
                        this._billboardGroup = new SortedIsoGroup(this._playfieldProxy.fieldSize);
                        if(_loc1_)
                        {
                           addr0082:
                           this._billboardGroup.container.mouseEnabled = false;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push(this.isoScene);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§pop().addChild(this._billboardGroup);
                                 if(_loc1_)
                                 {
                                    addr00c2:
                                    §§push(this.isoScene);
                                    if(_loc1_)
                                    {
                                       addr00cb:
                                       §§pop().addChild(this._buffCoverageGridView);
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§goto(addr00e0);
                                       }
                                       §§goto(addr0162);
                                    }
                                    §§goto(addr0166);
                                 }
                                 §§goto(addr0103);
                              }
                              §§goto(addr00cb);
                           }
                        }
                        §§goto(addr00e0);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0162);
               }
               §§goto(addr0060);
            }
            §§goto(addr00c2);
         }
         addr00e0:
         §§push(this._securityGradeHeatMapGroup);
         if(!(_loc2_ && _loc2_))
         {
            if(§§pop() == null)
            {
               if(_loc1_ || _loc1_)
               {
                  addr0103:
                  this._securityGradeHeatMapGroup = new IsoGroup();
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr011b:
                     §§push(this._securityGradeHeatMapGroup);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr012c);
                     }
                     §§goto(addr014e);
                  }
                  §§goto(addr014a);
               }
               §§goto(addr0162);
            }
            §§goto(addr011b);
         }
         addr012c:
         §§pop().container.mouseChildren = false;
         if(_loc1_ || _loc1_)
         {
            addr014e:
            this._securityGradeHeatMapGroup.container.mouseEnabled = false;
            addr014a:
            if(_loc1_ || _loc1_)
            {
               addr0166:
               this.isoScene.addChild(this._securityGradeHeatMapGroup);
               addr0162:
            }
         }
      }
      
      public function resetGroups() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this._billboardGroup.removeAllChildren();
            if(!_loc1_)
            {
               §§push(this.isoScene);
               if(_loc2_ || _loc2_)
               {
                  §§pop().removeChild(this._billboardGroup);
                  if(_loc2_ || Boolean(this))
                  {
                     addr005b:
                     this._buffCoverageGridView.removeAllChildren();
                     if(_loc2_ || _loc1_)
                     {
                        addr0070:
                        §§push(this.isoScene);
                        if(!_loc1_)
                        {
                           §§pop().removeChild(this._buffCoverageGridView);
                           §§goto(addr0079);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr00b6);
               }
               addr0079:
               if(!_loc1_)
               {
                  addr0090:
                  this._securityGradeHeatMapGroup.removeAllChildren();
                  if(!(_loc1_ && _loc2_))
                  {
                     addr00a9:
                     this.isoScene.removeChild(this._securityGradeHeatMapGroup);
                     if(_loc2_)
                     {
                        addr00b6:
                        this.buildField();
                     }
                  }
               }
               return;
            }
            §§goto(addr0070);
         }
         §§goto(addr005b);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.RENDER_TICK,ApplicationNotificationConstants.SHOW_NEED_ICONS,ApplicationNotificationConstants.HIDE_NEED_ICONS,ApplicationNotificationConstants.SHOW_ALL_ICONS,ApplicationNotificationConstants.SHOW_IMPROVEMENT_ICONS,ApplicationNotificationConstants.HIDE_IMPROVEMENT_ICONS,ApplicationNotificationConstants.HIDE_ALL_ICONS,ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_SHOPS_FOR_NEEDS,ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_ACTIVATED,ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM,ApplicationNotificationConstants.FIELD_GENERATED,ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY
         ,ApplicationNotificationConstants.FIELD_GENERATE_EXTENSIONS,ApplicationNotificationConstants.QUEST_STATE_CHANGED,ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED];
      }
      
      private function addBillboard(param1:BillboardObjectVo) : IObject3D
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc2_:IObject3D = null;
         var _loc3_:ExpansionFieldObject = null;
         var _loc4_:ExpansionFieldObjectVo = null;
         var _loc5_:* = false;
         var _loc6_:ConfigPlayfieldItemDTO = null;
         var _loc7_:BillboardObject = null;
         var _loc8_:IGameObjectVo = null;
         var _loc9_:Cuboid = null;
         var _loc10_:ConfigInitialPlayfieldItemDTO = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:* = 0;
         var _loc13_:* = null;
         if(_loc17_ || Boolean(_loc3_))
         {
            §§push(param1 is BoulderObjectVo);
            if(!_loc16_)
            {
               if(§§pop())
               {
                  if(!_loc16_)
                  {
                     §§push((param1 as BoulderObjectVo).isEventBoulder);
                     if(!(_loc16_ && Boolean(_loc3_)))
                     {
                        if(§§pop())
                        {
                           if(_loc17_ || Boolean(_loc2_))
                           {
                              addr009e:
                              §§push(this.buildingFactory);
                              if(_loc17_ || Boolean(_loc2_))
                              {
                                 §§push(§§pop().getBillboardObject(param1 as IBillboardObjectVo,this.eventProxy));
                                 if(!(_loc16_ && Boolean(param1)))
                                 {
                                    _loc2_ = §§pop();
                                    addr00d0:
                                    if(!_loc2_)
                                    {
                                       if(!(_loc16_ && Boolean(this)))
                                       {
                                          addr00f0:
                                          _loc2_ = this.buildingFactory.getBillboardObject(param1 as IBillboardObjectVo);
                                          addr00f4:
                                          _loc2_.setSize((param1 as BillboardObjectVo).matrix3dCoordinates.width * this._playfieldProxy.tileSize,(param1 as BillboardObjectVo).matrix3dCoordinates.height * this._playfieldProxy.tileSize,1);
                                          if(_loc17_ || Boolean(_loc3_))
                                          {
                                             §§goto(addr0132);
                                          }
                                          addr00e7:
                                       }
                                       §§goto(addr013c);
                                    }
                                    §§goto(addr00f4);
                                 }
                                 §§goto(addr00f0);
                              }
                              §§goto(addr00e7);
                           }
                           §§goto(addr013c);
                        }
                        §§goto(addr00d0);
                     }
                     addr0132:
                     §§goto(addr012d);
                  }
                  addr012d:
                  if(_loc2_ is ExpansionFieldObject)
                  {
                     if(!_loc16_)
                     {
                        addr013c:
                        _loc2_.container.mouseChildren = false;
                     }
                     _loc3_ = ExpansionFieldObject(_loc2_);
                     _loc4_ = _loc3_.billboardObjectVo as ExpansionFieldObjectVo;
                     if(_loc17_)
                     {
                        §§push(this._playfieldExpansionsProxy.isBuyableExpansions(_loc4_.configPlayfieldItemVo.id));
                        if(!_loc16_)
                        {
                           §§push(§§pop());
                        }
                        _loc5_ = §§pop();
                        if(!(_loc16_ && Boolean(param1)))
                        {
                           _loc4_.configOrigin = this._playfieldExpansionsProxy.getconfigExpansion(_loc4_.configPlayfieldItemVo.id);
                           if(_loc17_)
                           {
                              _loc3_.enableMouseOver = _loc5_;
                              if(_loc17_ || Boolean(param1))
                              {
                                 addr01b7:
                                 _loc3_.moveTo(_loc3_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc3_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
                                 if(_loc17_ || Boolean(_loc3_))
                                 {
                                    addr01ec:
                                    this._billboardGroup.addChild(_loc3_ as BillboardObject);
                                    if(_loc17_)
                                    {
                                       _loc4_.rollOverRect.connectWith(_loc3_);
                                    }
                                 }
                                 §§goto(addr0209);
                              }
                           }
                           §§goto(addr01ec);
                        }
                        addr0209:
                        for each(_loc10_ in _loc4_.configOrigin.initialPlayfieldItems)
                        {
                           _loc6_ = this._gameConfigProxy.config.items[_loc10_.configId];
                           _loc9_ = new Cuboid(_loc10_.xPos,_loc10_.yPos,VectorUtilities.getMinValue(_loc6_.zLevels),_loc6_.sizeX,_loc6_.sizeY,_loc6_.zLevels.length);
                           _loc8_ = ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc6_,_loc9_,this._timerProxy,this._gameConfigProxy,this._playfieldProxy);
                           (_loc8_ as BillboardObjectVo).showFinalAsset = true;
                           if(!(_loc16_ && Boolean(this)))
                           {
                              (_loc8_ as BillboardObjectVo).hideIconsForMoveMode = true;
                              if(_loc17_ || Boolean(param1))
                              {
                                 (_loc8_ as BillboardObjectVo).isConnectedToStreet = true;
                                 if(!_loc16_)
                                 {
                                    (_loc8_ as BillboardObjectVo).currentLevel = _loc6_.upgradeLevel + 1;
                                    if(_loc17_ || Boolean(this))
                                    {
                                       (_loc8_ as BillboardObjectVo).isExpansionObject = true;
                                       if(!(_loc16_ && Boolean(_loc3_)))
                                       {
                                          addr0315:
                                          (_loc8_ as BillboardObjectVo).expansionObject = _loc2_ as ExpansionFieldObject;
                                       }
                                    }
                                    _loc7_ = this._buildingFactory.getBillboardObject(_loc8_ as BillboardObjectVo);
                                    if(!(_loc16_ && Boolean(param1)))
                                    {
                                       this._playfieldObjectsProxy.addGameObjectByData(_loc8_);
                                       if(_loc16_)
                                       {
                                          continue;
                                       }
                                       (_loc7_ as IEstablishedManagerImplementation).invalidateEstablishedManager();
                                       if(!_loc17_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc3_.expansionFieldObjectVo.temporaryAdded.push(_loc8_);
                                    continue;
                                 }
                              }
                           }
                           §§goto(addr0315);
                        }
                        §§goto(addr05c3);
                     }
                     §§goto(addr01b7);
                  }
                  else
                  {
                     _loc11_ = BillboardObject(_loc2_);
                     _loc11_.setSize((param1 as BillboardObjectVo).matrix3dCoordinates.width * this._playfieldProxy.tileSize,(param1 as BillboardObjectVo).matrix3dCoordinates.height * this._playfieldProxy.tileSize,1);
                     if(_loc17_)
                     {
                        _loc11_.moveTo(_loc11_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc11_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
                        if(!_loc16_)
                        {
                           if(_loc11_.billboardObjectVo.isExpansionObject)
                           {
                              if(!(_loc16_ && Boolean(param1)))
                              {
                                 addr0402:
                                 §§push(this._playfieldProxy.getGroundTypeByCoordinates(new Point(_loc11_.billboardObjectVo.matrix3dCoordinates.x,_loc11_.billboardObjectVo.matrix3dCoordinates.y)));
                                 if(!_loc16_)
                                 {
                                    §§push(§§pop());
                                    if(_loc17_)
                                    {
                                       _loc13_ = §§pop();
                                       if(!_loc16_)
                                       {
                                          addr04aa:
                                          var _loc14_:* = _loc13_;
                                          if(_loc17_)
                                          {
                                             §§push(ServerRestrictionConstants.BUILDINGLAND);
                                             if(_loc17_)
                                             {
                                                §§push(_loc14_);
                                                if(_loc17_ || Boolean(this))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc17_ || Boolean(_loc2_))
                                                      {
                                                         addr04ea:
                                                         §§push(1);
                                                         if(_loc16_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0534:
                                                         §§push(3);
                                                         if(_loc17_ || Boolean(_loc2_))
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr054a);
                                                   }
                                                   else
                                                   {
                                                      §§push(ServerRestrictionConstants.SNOW);
                                                      if(_loc17_)
                                                      {
                                                         §§push(_loc14_);
                                                         if(_loc17_)
                                                         {
                                                            addr050a:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc17_)
                                                               {
                                                                  §§push(2);
                                                                  if(_loc16_ && Boolean(param1))
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr0534);
                                                               }
                                                               §§goto(addr054a);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr0530);
                                                            }
                                                         }
                                                         addr0530:
                                                      }
                                                      §§goto(addr052e);
                                                   }
                                                }
                                                §§goto(addr050a);
                                             }
                                             addr052e:
                                             if(ServerRestrictionConstants.MOUNTAIN === _loc14_)
                                             {
                                                §§goto(addr0534);
                                             }
                                             else
                                             {
                                                §§push(0);
                                             }
                                             addr054a:
                                             loop1:
                                             while(true)
                                             {
                                                switch(§§pop())
                                                {
                                                   case 2:
                                                      §§push(12309449);
                                                      if(!(_loc16_ && Boolean(_loc2_)))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc17_)
                                                         {
                                                            addr0471:
                                                            _loc12_ = §§pop();
                                                            if(_loc17_)
                                                            {
                                                               break;
                                                            }
                                                            addr05ba:
                                                            this._billboardGroup.addChild(_loc2_);
                                                            break loop1;
                                                         }
                                                         addr0490:
                                                         _loc12_ = §§pop();
                                                         if(!(_loc16_ && Boolean(_loc3_)))
                                                         {
                                                            break;
                                                         }
                                                         break loop1;
                                                      }
                                                      continue;
                                                   case 3:
                                                      §§push(6321253);
                                                      if(_loc17_ || Boolean(_loc2_))
                                                      {
                                                         §§goto(addr0490);
                                                         §§push(§§pop());
                                                      }
                                                      continue;
                                                   default:
                                                      §§push(6984483);
                                                      if(!_loc17_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop());
                                                      if(_loc17_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         if(_loc17_)
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr0471);
                                                }
                                                addr056b:
                                                TweenMax.to(_loc11_.presentation,0,{"colorMatrixFilter":{"saturation":0}});
                                                if(!_loc16_)
                                                {
                                                   TweenMax.to(_loc11_.presentation,0,{"colorTransform":{
                                                      "tint":_loc12_,
                                                      "tintAmount":0.75
                                                   }});
                                                   if(_loc16_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§goto(addr05ba);
                                             }
                                             §§goto(addr05c3);
                                          }
                                          §§goto(addr04ea);
                                       }
                                       §§goto(addr05ba);
                                    }
                                 }
                                 §§goto(addr04aa);
                              }
                              §§goto(addr056b);
                           }
                           §§goto(addr05ba);
                        }
                        §§goto(addr0402);
                     }
                     §§goto(addr056b);
                  }
                  return _loc2_;
               }
               §§goto(addr00d0);
            }
            §§goto(addr0132);
         }
         §§goto(addr009e);
      }
      
      private function addClientObject(param1:ClientFieldObjectVo) : IObject3D
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ClientFieldObject = null;
         _loc2_ = this.buildingFactory.getClientFieldObject(param1);
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.setSize(_loc2_.fieldMatrixObject3dVo.matrixCoordinates.width * this._playfieldProxy.tileSize,_loc2_.fieldMatrixObject3dVo.matrixCoordinates.height * this._playfieldProxy.tileSize,1);
            if(_loc3_ || Boolean(param1))
            {
               _loc2_.moveTo(_loc2_.fieldMatrixObject3dVo.matrixCoordinates.x * this._playfieldProxy.tileSize,_loc2_.fieldMatrixObject3dVo.matrixCoordinates.y * this._playfieldProxy.tileSize,1);
               if(_loc3_)
               {
                  addr00af:
                  this._billboardGroup.addChild(_loc2_);
               }
               return _loc2_;
            }
         }
         §§goto(addr00af);
      }
      
      private function addUrbie(param1:UrbieLifeVo) : IObject3D
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:IObject3D = null;
         var _loc3_:UrbieLifeVo = param1 as UrbieLifeVo;
         _loc2_ = UrbieFactory.instance.getUrbie(param1 as UrbieLifeVo);
         if(_loc5_)
         {
            if(_loc2_ == null)
            {
               if(_loc5_)
               {
                  §§goto(addr004a);
               }
            }
            var _loc4_:UrbieObject = UrbieObject(_loc2_);
            §§push(_loc4_.urbieLifeVo);
            if(_loc5_)
            {
               §§push(§§pop().config);
               if(!_loc6_)
               {
                  §§push(§§pop().id);
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     §§push("_bottom");
                     if(_loc5_)
                     {
                        §§push(§§pop().split(§§pop()).length >= 2);
                        if(_loc5_)
                        {
                           §§push(!§§pop());
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              addr00a2:
                              var _temp_4:* = §§pop();
                              §§push(_temp_4);
                              if(_temp_4)
                              {
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       addr00e6:
                                       addr00d6:
                                       addr00d3:
                                       addr00d1:
                                       addr00cf:
                                       §§push(_loc4_.urbieLifeVo.config.id.split("_top").length >= 2);
                                       if(_loc5_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             _loc4_.setSize(this._playfieldProxy.tileSize,this._playfieldProxy.tileSize,1);
                                             if(!_loc6_)
                                             {
                                                _loc4_.isAnimated = false;
                                                addr0164:
                                                if(!_loc6_)
                                                {
                                                   addr017c:
                                                   this._urbiesProxy.urbieObjectDictionary[_loc3_.id] = _loc4_;
                                                   if(!(_loc6_ && Boolean(_loc2_)))
                                                   {
                                                      addr0199:
                                                      this._billboardGroup.addChild(_loc4_);
                                                   }
                                                   §§goto(addr01a3);
                                                }
                                                §§goto(addr0199);
                                             }
                                             addr01a3:
                                             return _loc2_;
                                          }
                                          §§goto(addr0164);
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          §§push(this._playfieldProxy.tileSize);
                                          if(_loc5_ || Boolean(param1))
                                          {
                                             §§push(§§pop() / 2);
                                          }
                                          §§push(this._playfieldProxy.tileSize);
                                          if(!(_loc6_ && Boolean(param1)))
                                          {
                                             §§push(2);
                                             if(!(_loc6_ && Boolean(param1)))
                                             {
                                                addr0158:
                                                §§push(§§pop() / §§pop());
                                                §§push(1);
                                             }
                                             §§pop().setSize(§§pop(),§§pop(),§§pop());
                                             if(!_loc6_)
                                             {
                                                §§goto(addr0164);
                                             }
                                             §§goto(addr017c);
                                          }
                                          §§goto(addr0158);
                                       }
                                    }
                                    §§goto(addr0164);
                                 }
                              }
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr00d6);
                  }
                  §§goto(addr00d3);
               }
               §§goto(addr00d1);
            }
            §§goto(addr00cf);
         }
         addr004a:
         return null;
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc42_:Boolean = true;
         var _loc43_:* = §§pop();
         var _loc2_:Vector.<PlayfieldSwitchFieldObject> = null;
         var _loc3_:IObject3dVo = null;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:BillboardObjectVo = null;
         var _loc7_:BillboardObject = null;
         var _loc8_:Cuboid = null;
         var _loc9_:BillboardObjectVo = null;
         var _loc10_:Rectangle = null;
         var _loc11_:Object = null;
         var _loc12_:BillboardObjectVo = null;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = false;
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
         var _loc40_:* = param1.getName();
         if(!(_loc43_ && Boolean(_loc3_)))
         {
            §§push(ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED);
            if(_loc42_ || Boolean(_loc2_))
            {
               §§push(_loc40_);
               if(_loc42_ || Boolean(param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc42_)
                     {
                        addr1146:
                        §§push(0);
                        if(_loc42_)
                        {
                        }
                     }
                     else
                     {
                        addr141a:
                        §§push(12);
                        if(_loc42_ || Boolean(_loc3_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
                     if(!_loc43_)
                     {
                        §§push(_loc40_);
                        if(!(_loc43_ && Boolean(_loc2_)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc43_ && Boolean(this)))
                              {
                                 §§push(1);
                                 if(_loc43_ && Boolean(param1))
                                 {
                                 }
                              }
                              else
                              {
                                 addr1242:
                                 §§push(4);
                                 if(_loc42_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.FIELD_GENERATED);
                              if(_loc42_ || Boolean(_loc2_))
                              {
                                 §§push(_loc40_);
                                 if(_loc42_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc43_)
                                       {
                                          §§push(2);
                                          if(_loc43_ && Boolean(_loc2_))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr14ce:
                                          §§push(15);
                                          if(_loc43_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM);
                                       if(!(_loc43_ && Boolean(this)))
                                       {
                                          §§push(_loc40_);
                                          if(!(_loc43_ && Boolean(_loc3_)))
                                          {
                                             addr11ef:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc42_ || Boolean(this))
                                                {
                                                   §§push(3);
                                                   if(_loc43_ && Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr1273:
                                                   §§push(5);
                                                   if(_loc43_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ApplicationNotificationConstants.FIELD_ADD_TEMPORARY);
                                                if(_loc42_)
                                                {
                                                   §§push(_loc40_);
                                                   if(!(_loc43_ && Boolean(param1)))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc43_ && Boolean(this)))
                                                         {
                                                            §§goto(addr1242);
                                                         }
                                                         else
                                                         {
                                                            addr13e1:
                                                            §§push(11);
                                                            if(_loc42_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM);
                                                         if(!_loc43_)
                                                         {
                                                            §§push(_loc40_);
                                                            if(_loc42_ || Boolean(param1))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc42_)
                                                                  {
                                                                     §§goto(addr1273);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr12dd:
                                                                     §§push(7);
                                                                     if(_loc43_ && Boolean(param1))
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY);
                                                                  if(_loc42_)
                                                                  {
                                                                     addr128a:
                                                                     §§push(_loc40_);
                                                                     if(!_loc43_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc43_ && Boolean(param1)))
                                                                           {
                                                                              §§push(6);
                                                                              if(_loc43_)
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr12dd);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION);
                                                                           if(!(_loc43_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§push(_loc40_);
                                                                              if(!(_loc43_ && Boolean(param1)))
                                                                              {
                                                                                 addr12d3:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc42_)
                                                                                    {
                                                                                       §§goto(addr12dd);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr1453:
                                                                                       §§push(13);
                                                                                       if(_loc43_ && Boolean(this))
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM);
                                                                                    if(!(_loc43_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       addr1304:
                                                                                       §§push(_loc40_);
                                                                                       if(!(_loc43_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          addr1314:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!(_loc43_ && Boolean(param1)))
                                                                                             {
                                                                                                §§push(8);
                                                                                                if(_loc43_ && Boolean(_loc3_))
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr15a7:
                                                                                                §§push(19);
                                                                                                if(_loc43_ && Boolean(param1))
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr15c7);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED);
                                                                                             if(_loc42_)
                                                                                             {
                                                                                                §§push(_loc40_);
                                                                                                if(!(_loc43_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!(_loc43_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         §§push(9);
                                                                                                         if(_loc42_ || Boolean(this))
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr14ce);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_SHOPS_FOR_NEEDS);
                                                                                                      if(!(_loc43_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr138e:
                                                                                                         §§push(_loc40_);
                                                                                                         if(!_loc43_)
                                                                                                         {
                                                                                                            addr1396:
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(!(_loc43_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  §§push(10);
                                                                                                                  if(_loc42_ || Boolean(_loc3_))
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr15a7);
                                                                                                               }
                                                                                                               §§goto(addr15c7);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_ACTIVATED);
                                                                                                               if(_loc42_)
                                                                                                               {
                                                                                                                  addr13c7:
                                                                                                                  §§push(_loc40_);
                                                                                                                  if(_loc42_)
                                                                                                                  {
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc43_ && Boolean(_loc3_)))
                                                                                                                        {
                                                                                                                           §§goto(addr13e1);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr141a);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE);
                                                                                                                        if(!(_loc43_ && Boolean(param1)))
                                                                                                                        {
                                                                                                                           §§push(_loc40_);
                                                                                                                           if(_loc42_)
                                                                                                                           {
                                                                                                                              addr1408:
                                                                                                                              if(§§pop() === §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc43_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    §§goto(addr141a);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr1541:
                                                                                                                                    §§push(17);
                                                                                                                                    if(_loc42_ || Boolean(_loc2_))
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(ApplicationNotificationConstants.HIDE_ALL_ICONS);
                                                                                                                                 if(_loc42_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    §§push(_loc40_);
                                                                                                                                    if(_loc42_)
                                                                                                                                    {
                                                                                                                                       addr1449:
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc42_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1453);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr15a7);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(ApplicationNotificationConstants.SHOW_ALL_ICONS);
                                                                                                                                          if(!(_loc43_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             addr147a:
                                                                                                                                             §§push(_loc40_);
                                                                                                                                             if(!(_loc43_ && Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                addr148a:
                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc42_)
                                                                                                                                                   {
                                                                                                                                                      §§push(14);
                                                                                                                                                      if(_loc42_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr15a7);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr15c7);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(ApplicationNotificationConstants.SHOW_IMPROVEMENT_ICONS);
                                                                                                                                                   if(!_loc43_)
                                                                                                                                                   {
                                                                                                                                                      addr14ac:
                                                                                                                                                      §§push(_loc40_);
                                                                                                                                                      if(_loc42_ || Boolean(_loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr14bc);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1570);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr14ee);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr14bc);
                                                                                                                                          }
                                                                                                                                          §§goto(addr15a1);
                                                                                                                                       }
                                                                                                                                       §§goto(addr15a7);
                                                                                                                                    }
                                                                                                                                    addr14bc:
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc43_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          §§goto(addr14ce);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr1590:
                                                                                                                                          §§push(18);
                                                                                                                                          if(_loc43_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(ApplicationNotificationConstants.HIDE_IMPROVEMENT_ICONS);
                                                                                                                                       if(_loc42_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          addr14ee:
                                                                                                                                          §§push(_loc40_);
                                                                                                                                          if(!(_loc43_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc42_)
                                                                                                                                                {
                                                                                                                                                   §§push(16);
                                                                                                                                                   if(_loc42_ || Boolean(_loc2_))
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr15a7);
                                                                                                                                                }
                                                                                                                                                §§goto(addr15c7);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(ApplicationNotificationConstants.SHOW_NEED_ICONS);
                                                                                                                                                if(_loc42_)
                                                                                                                                                {
                                                                                                                                                   addr1527:
                                                                                                                                                   §§push(_loc40_);
                                                                                                                                                   if(_loc42_ || Boolean(_loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc42_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1541);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1590);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(ApplicationNotificationConstants.HIDE_NEED_ICONS);
                                                                                                                                                         if(!(_loc43_ && Boolean(param1)))
                                                                                                                                                         {
                                                                                                                                                            addr1568:
                                                                                                                                                            §§push(_loc40_);
                                                                                                                                                            if(_loc42_)
                                                                                                                                                            {
                                                                                                                                                               addr1570:
                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc42_ || Boolean(param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1590);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr15a7);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr15a3);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr15a7);
                                                                                                                                                            }
                                                                                                                                                            addr15a3:
                                                                                                                                                            §§goto(addr15a1);
                                                                                                                                                         }
                                                                                                                                                         addr15a1:
                                                                                                                                                         if(ApplicationNotificationConstants.RENDER_TICK === _loc40_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr15a7);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(20);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr15c7);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr15c7);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1570);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1568);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1570);
                                                                                                                                       }
                                                                                                                                       §§goto(addr15a1);
                                                                                                                                    }
                                                                                                                                    §§goto(addr15c7);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1568);
                                                                                                                              }
                                                                                                                              §§goto(addr15c7);
                                                                                                                           }
                                                                                                                           §§goto(addr14bc);
                                                                                                                        }
                                                                                                                        §§goto(addr1527);
                                                                                                                     }
                                                                                                                     §§goto(addr15c7);
                                                                                                                  }
                                                                                                                  §§goto(addr148a);
                                                                                                               }
                                                                                                               §§goto(addr1527);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr14bc);
                                                                                                      }
                                                                                                      §§goto(addr15a1);
                                                                                                   }
                                                                                                   §§goto(addr15c7);
                                                                                                }
                                                                                                §§goto(addr1396);
                                                                                             }
                                                                                             §§goto(addr14ac);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1449);
                                                                                    }
                                                                                    §§goto(addr13c7);
                                                                                 }
                                                                                 §§goto(addr15c7);
                                                                              }
                                                                              §§goto(addr1314);
                                                                           }
                                                                           §§goto(addr13c7);
                                                                        }
                                                                        §§goto(addr15c7);
                                                                     }
                                                                     §§goto(addr1570);
                                                                  }
                                                                  §§goto(addr147a);
                                                               }
                                                               §§goto(addr15c7);
                                                            }
                                                            §§goto(addr1449);
                                                         }
                                                         §§goto(addr138e);
                                                      }
                                                      §§goto(addr15c7);
                                                   }
                                                   §§goto(addr12d3);
                                                }
                                                §§goto(addr147a);
                                             }
                                             §§goto(addr15c7);
                                          }
                                          §§goto(addr1408);
                                       }
                                       §§goto(addr128a);
                                    }
                                    §§goto(addr15c7);
                                 }
                                 §§goto(addr11ef);
                              }
                              §§goto(addr138e);
                           }
                           §§goto(addr15c7);
                        }
                        §§goto(addr1570);
                     }
                     §§goto(addr13c7);
                  }
                  addr15c7:
                  loop18:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                        _loc2_ = this._playfieldObjectsProxy.playfieldSwitchObjects;
                        if(_loc42_)
                        {
                           _loc40_ = 0;
                           if(_loc42_ || Boolean(_loc3_))
                           {
                              for each(_loc16_ in _loc2_)
                              {
                                 _loc16_.state = ConfigFactory.setPlayfieldSwitchFieldObjectVoState(_loc16_.playfieldSwitchFieldObjectVo);
                              }
                           }
                           if(_loc43_ && Boolean(_loc3_))
                           {
                           }
                        }
                        break;
                     case 2:
                        this.buildValidPlayfieldExpansions();
                        if(_loc42_)
                        {
                           sendNotification(ApplicationNotificationConstants.RENEW_EXPANSION_SALE_MARKER);
                        }
                        break;
                     case 3:
                        _loc3_ = IObject3dVo(param1.getBody());
                        if(_loc42_ || Boolean(_loc3_))
                        {
                           if(_loc3_ == null)
                           {
                              break;
                           }
                           if(!_loc43_)
                           {
                              §§push(_loc3_ is BillboardObjectVo);
                              if(_loc42_ || Boolean(param1))
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc42_)
                                    {
                                       addr0549:
                                       _loc25_ = param1.getBody() as IPlaneObject;
                                       _loc25_.moveTo(_loc25_.objectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc25_.objectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,0);
                                       break;
                                    }
                                    addr01a9:
                                    _loc17_ = this.addBillboard(_loc3_ as BillboardObjectVo);
                                    if(!_loc42_)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§push(_loc3_ is UrbieLifeVo);
                                    if(!_loc43_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc43_ && Boolean(this)))
                                          {
                                             _loc17_ = this.addUrbie(_loc3_ as UrbieLifeVo);
                                             if(_loc17_ == null)
                                             {
                                                if(!(_loc43_ && Boolean(param1)))
                                                {
                                                   return;
                                                }
                                             }
                                             addr0236:
                                             this._playfieldObjectsProxy.addObjectToObjectList(_loc17_);
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc3_ is ClientFieldObjectVo);
                                          if(!(_loc43_ && Boolean(_loc3_)))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc43_)
                                                {
                                                   addr026d:
                                                   _loc18_ = param1.getBody() as BillboardObject;
                                                   _loc18_.presentation.visible = false;
                                                   if(!_loc43_)
                                                   {
                                                      this._billboardGroup.addChild(_loc18_);
                                                   }
                                                   break;
                                                }
                                                _loc17_ = this.addClientObject(_loc3_ as ClientFieldObjectVo);
                                             }
                                             §§goto(addr0236);
                                          }
                                          else
                                          {
                                             addr04a5:
                                             if(!§§pop())
                                             {
                                                break;
                                             }
                                             if(!_loc43_)
                                             {
                                                addr04af:
                                                _loc23_ = param1.getBody() as IObject3D;
                                                if(!(_loc43_ && Boolean(param1)))
                                                {
                                                   this._billboardGroup.removeChild(_loc23_);
                                                }
                                                break;
                                             }
                                          }
                                       }
                                       addr04f8:
                                       _loc24_ = param1.getBody() as BillboardObject;
                                       _loc24_.moveTo(_loc24_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc24_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,0);
                                       if(!(_loc43_ && Boolean(this)))
                                       {
                                          break;
                                       }
                                       addr067b:
                                       this._playFieldHighlightedObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
                                       if(!_loc43_)
                                       {
                                          addr0697:
                                          this._playFieldHighlightedObjectsProxy.resetHighlightedShops();
                                          addr0693:
                                       }
                                       break;
                                    }
                                    addr03a8:
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    if(!(_loc43_ && Boolean(_loc2_)))
                                    {
                                       addr03ba:
                                       _loc21_ = param1.getBody() as UrbieObject;
                                       _loc22_ = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                                       _loc22_.stopEmergencyCitizenSoundByCitizenID(_loc21_.urbieLifeVo.config.citizenID);
                                       if(!_loc43_)
                                       {
                                          §§push(this._urbiesProxy);
                                          if(_loc42_)
                                          {
                                             §§pop().urbieObjectDictionary[_loc21_.urbieLifeVo.id] = null;
                                             if(!(_loc43_ && Boolean(param1)))
                                             {
                                                addr041a:
                                                delete this._urbiesProxy.urbieObjectDictionary[_loc21_.urbieLifeVo.id];
                                                addr0416:
                                                if(!(_loc42_ || Boolean(_loc2_)))
                                                {
                                                   break;
                                                }
                                                this._playfieldObjectsProxy.removeObjectFromObjectList(_loc21_);
                                                if(!(_loc43_ && Boolean(this)))
                                                {
                                                   this._billboardGroup.removeChild(_loc21_);
                                                   if(!_loc42_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                RandomUtilities.cleanRemoveChild(_loc21_.presentation);
                                                if(_loc43_)
                                                {
                                                   break;
                                                }
                                             }
                                             _loc21_.removeAllListeners();
                                             if(_loc42_ || Boolean(this))
                                             {
                                                _loc21_.destroy();
                                             }
                                             break;
                                          }
                                          §§goto(addr041a);
                                       }
                                       §§goto(addr0416);
                                    }
                                    §§goto(addr04af);
                                 }
                                 §§goto(addr0236);
                              }
                              else
                              {
                                 addr02a1:
                                 var _temp_47:* = §§pop();
                                 §§push(_temp_47);
                                 if(_temp_47)
                                 {
                                    if(_loc42_)
                                    {
                                       §§pop();
                                       if(!(_loc43_ && Boolean(_loc2_)))
                                       {
                                          §§push(param1.getBody() is PlaneObject);
                                          if(!(_loc43_ && Boolean(_loc3_)))
                                          {
                                             addr02d1:
                                             §§push(!§§pop());
                                             if(!_loc43_)
                                             {
                                                addr02d8:
                                                if(§§pop())
                                                {
                                                   if(_loc42_ || Boolean(param1))
                                                   {
                                                      addr02ea:
                                                      _loc19_ = param1.getBody() as BillboardObject;
                                                      if(_loc42_ || Boolean(_loc2_))
                                                      {
                                                         this._billboardGroup.removeChild(_loc19_);
                                                         if(!(_loc43_ && Boolean(param1)))
                                                         {
                                                            this._playfieldObjectsProxy.removeObjectFromObjectList(_loc19_);
                                                            if(!(_loc43_ && Boolean(_loc3_)))
                                                            {
                                                               addr0333:
                                                               if(param1.getBody() is ExpansionFieldObject)
                                                               {
                                                                  if(_loc42_)
                                                                  {
                                                                     _loc40_ = 0;
                                                                     if(!(_loc43_ && Boolean(_loc3_)))
                                                                     {
                                                                        for each(_loc20_ in this._playfieldObjectsProxy.expansionList)
                                                                        {
                                                                           _loc20_.enableMouseOver = this._playfieldExpansionsProxy.isBuyableExpansions(_loc20_.expansionFieldObjectVo.configPlayfieldItemVo.id);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr0392:
                                                            §§push(param1.getBody() is UrbieObject);
                                                            if(_loc42_ || Boolean(_loc3_))
                                                            {
                                                               §§goto(addr03a8);
                                                            }
                                                            else
                                                            {
                                                               addr04ee:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc43_)
                                                                  {
                                                                     §§goto(addr04f8);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0545:
                                                                  if(!(param1.getBody() is IPlaneObject))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§goto(addr0549);
                                                            }
                                                         }
                                                         §§goto(addr0333);
                                                      }
                                                      §§goto(addr0392);
                                                   }
                                                   §§goto(addr0549);
                                                }
                                                §§goto(addr0392);
                                             }
                                             else
                                             {
                                                §§goto(addr04a5);
                                             }
                                          }
                                          §§goto(addr04ee);
                                       }
                                       §§goto(addr03ba);
                                    }
                                    §§goto(addr0545);
                                 }
                                 §§goto(addr02d8);
                              }
                           }
                           §§goto(addr01a9);
                        }
                        §§goto(addr0549);
                     case 4:
                        §§push(param1.getBody() is BillboardObject);
                        if(!(_loc43_ && Boolean(this)))
                        {
                           if(!§§pop())
                           {
                              break;
                           }
                           if(_loc42_ || Boolean(this))
                           {
                              §§goto(addr026d);
                           }
                           else
                           {
                              §§goto(addr02ea);
                           }
                        }
                        else
                        {
                           §§goto(addr02a1);
                        }
                        §§goto(addr0392);
                     case 5:
                        §§push(param1.getBody() is BillboardObject);
                        if(_loc42_)
                        {
                           §§goto(addr02a1);
                        }
                        §§goto(addr02d1);
                     case 6:
                        §§push(param1.getBody() is IObject3D);
                        if(!(_loc43_ && Boolean(this)))
                        {
                           §§goto(addr04a5);
                        }
                        else
                        {
                           §§goto(addr04ee);
                        }
                     case 7:
                        §§push(param1.getBody() is BillboardObject);
                        if(_loc42_ || Boolean(param1))
                        {
                           §§goto(addr04ee);
                        }
                        §§goto(addr0545);
                     case 8:
                        §§push(param1.getBody() is BillboardObject);
                        if(!_loc43_)
                        {
                           if(!§§pop())
                           {
                              break;
                           }
                           if(_loc42_)
                           {
                              _loc26_ = param1.getBody() as BillboardObject;
                              _loc26_.moveTo(_loc26_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc26_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
                              if(!(_loc43_ && Boolean(param1)))
                              {
                                 _loc26_.presentation.visible = true;
                              }
                              break;
                           }
                           addr0651:
                           addr0653:
                           if(_loc5_ == true)
                           {
                              if(!_loc42_)
                              {
                                 break;
                              }
                              §§push(this._playFieldHighlightedObjectsProxy);
                              if(_loc42_ || Boolean(_loc2_))
                              {
                                 if(§§pop() == null)
                                 {
                                    if(_loc43_)
                                    {
                                       break;
                                    }
                                    §§goto(addr067b);
                                 }
                                 §§goto(addr0693);
                              }
                              §§goto(addr0697);
                           }
                        }
                        else
                        {
                           addr0630:
                           _loc5_ = §§pop();
                           if(!_loc43_)
                           {
                              addr063c:
                              this._buffCoverageGridView.container.visible = _loc4_;
                              if(!(_loc43_ && Boolean(param1)))
                              {
                                 §§goto(addr0651);
                              }
                           }
                        }
                        §§goto(addr0693);
                     case 9:
                        §§push(Boolean(param1.getBody()));
                        if(_loc42_ || Boolean(_loc2_))
                        {
                           _loc4_ = §§pop();
                           if(_loc43_)
                           {
                              break;
                           }
                           §§push(this._buffCoverageGridView);
                           if(_loc42_ || Boolean(this))
                           {
                              §§push(Boolean(§§pop().container.visible));
                              if(_loc42_ || Boolean(this))
                              {
                                 §§goto(addr0630);
                              }
                              §§goto(addr0653);
                           }
                           §§goto(addr063c);
                        }
                        §§goto(addr0653);
                     case 10:
                        _loc6_ = BillboardObjectVo(param1.getBody());
                        if(_loc42_ || Boolean(this))
                        {
                           §§push(this._playFieldHighlightedObjectsProxy);
                           if(!(_loc43_ && Boolean(_loc2_)))
                           {
                              §§pop().objectVothatMoves = _loc6_;
                              if(!_loc42_)
                              {
                                 break;
                              }
                              addr06db:
                              §§push(this._playFieldHighlightedObjectsProxy);
                           }
                           §§pop().findAndHighlightShops(_loc6_.matrix3dCoordinates);
                           break;
                        }
                        §§goto(addr06db);
                     case 11:
                        _loc7_ = BillboardObject(param1.getBody());
                        _loc8_ = _loc7_.billboardObjectVo.matrix3dCoordinates.clone() as Cuboid;
                        _loc8_.width += 2;
                        if(_loc42_)
                        {
                           _loc8_.height += 2;
                           if(_loc42_ || Boolean(param1))
                           {
                              --_loc8_.x;
                              if(_loc42_)
                              {
                                 --_loc8_.y;
                                 if(_loc43_ && Boolean(_loc3_))
                                 {
                                    break;
                                 }
                              }
                              _loc7_.billboardObjectVo.isConnectedToStreet = this._playfieldObjectsProxy.iPlaneObjectVosByCuboid(_loc8_).length > 0;
                              if(_loc43_ && Boolean(_loc3_))
                              {
                                 break;
                              }
                           }
                        }
                        _loc7_.invalidateIconStateManager();
                        break;
                     case 12:
                        _loc9_ = BillboardObjectVo(param1.getBody());
                        §§push(_loc9_ is ShopFieldObjectVo);
                        if(_loc42_ || Boolean(_loc3_))
                        {
                           if(§§pop())
                           {
                              if(!_loc43_)
                              {
                                 _loc27_ = ShopFieldObjectVo(param1.getBody());
                                 _loc10_ = _loc27_.satisfyRange;
                                 if(!_loc43_)
                                 {
                                    addr091d:
                                    §§push(_loc10_.width == 0);
                                    if(_loc42_ || Boolean(this))
                                    {
                                       var _temp_79:* = §§pop();
                                       §§push(_temp_79);
                                       if(!_temp_79)
                                       {
                                          if(_loc42_)
                                          {
                                             §§pop();
                                             if(!_loc43_)
                                             {
                                                §§push(_loc10_.height == 0);
                                                if(_loc42_ || Boolean(_loc3_))
                                                {
                                                   addr0959:
                                                   if(§§pop())
                                                   {
                                                      if(_loc43_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this._buffCoverageGridView);
                                                      if(!_loc43_)
                                                      {
                                                         §§pop().container.visible = false;
                                                         if(!_loc43_)
                                                         {
                                                            §§push(this._playFieldHighlightedObjectsProxy);
                                                            if(_loc42_ || Boolean(this))
                                                            {
                                                               §§pop().resetHighlight();
                                                               if(!(_loc43_ && Boolean(_loc2_)))
                                                               {
                                                                  return;
                                                               }
                                                               addr0ac8:
                                                               §§push(this._playFieldHighlightedObjectsProxy);
                                                               if(!(_loc43_ && Boolean(_loc3_)))
                                                               {
                                                                  addr0ada:
                                                                  §§pop().objectVothatMoves = _loc9_;
                                                                  if(_loc43_ && Boolean(_loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr0aed:
                                                                  §§push(_loc9_ is ShopFieldObjectVo);
                                                                  if(!(_loc43_ && Boolean(_loc2_)))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc43_)
                                                                        {
                                                                           addr0b0b:
                                                                           §§push(this._playFieldHighlightedObjectsProxy);
                                                                           if(_loc42_)
                                                                           {
                                                                              addr0b15:
                                                                              §§pop().findAndHighlightBuildings(_loc10_);
                                                                              if(_loc42_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr0b36:
                                                                              §§push(this._playFieldHighlightedObjectsProxy);
                                                                           }
                                                                           §§pop().findAndHighlightEmergency(_loc10_);
                                                                           if(_loc43_ && Boolean(_loc2_))
                                                                           {
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr0c9c:
                                                                        §§push(0);
                                                                        if(_loc42_ || Boolean(_loc3_))
                                                                        {
                                                                           addr0cac:
                                                                           _loc40_ = §§pop();
                                                                           if(_loc42_ || Boolean(this))
                                                                           {
                                                                              addr0cbc:
                                                                              §§push(this._playfieldObjectsProxy);
                                                                              if(_loc42_ || Boolean(this))
                                                                              {
                                                                                 addr0cce:
                                                                                 var _loc41_:* = §§pop().playfieldSwitchObjects;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc41_,_loc40_));
                                                                                    if(_loc42_ || Boolean(param1))
                                                                                    {
                                                                                       while(!§§pop())
                                                                                       {
                                                                                          if(!_loc43_)
                                                                                          {
                                                                                             addr0d03:
                                                                                             if(_loc42_ || Boolean(param1))
                                                                                             {
                                                                                                addr0d13:
                                                                                                if(_loc42_)
                                                                                                {
                                                                                                }
                                                                                                break loop18;
                                                                                             }
                                                                                             addr0dd4:
                                                                                             addr0dd0:
                                                                                             addr0dd0:
                                                                                             _loc41_ = this._playfieldObjectsProxy.billboardList;
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc41_,_loc40_));
                                                                                                addr0e07:
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   _loc35_ = §§nextvalue(_loc40_,_loc41_);
                                                                                                   _loc35_.billboardObjectVo.currentApplicationMode = "";
                                                                                                   if(!(_loc43_ && Boolean(this)))
                                                                                                   {
                                                                                                      _loc35_.iconVisibility = false;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          break loop18;
                                                                                       }
                                                                                       continue;
                                                                                       addr0cf9:
                                                                                    }
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc42_ || Boolean(_loc2_))
                                                                                          {
                                                                                             addr0da1:
                                                                                             if(_loc42_)
                                                                                             {
                                                                                                if(_loc43_ && Boolean(param1))
                                                                                                {
                                                                                                }
                                                                                                break loop18;
                                                                                             }
                                                                                             §§goto(addr0dd0);
                                                                                          }
                                                                                          §§goto(addr0e0b);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc34_ = §§nextvalue(_loc40_,_loc41_);
                                                                                          _loc34_.billboardObjectVo.currentApplicationMode = ApplicationModeProxy.MODE_IMPROVEMENT;
                                                                                          if(!(_loc43_ && Boolean(this)))
                                                                                          {
                                                                                             _loc34_.invalidateIconStateManager();
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc41_,_loc40_));
                                                                                             if(!(_loc43_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                          }
                                                                                          addr0d7e:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0e07);
                                                                                    _loc33_ = §§nextvalue(_loc40_,_loc41_);
                                                                                    _loc33_.iconVisibility = true;
                                                                                 }
                                                                              }
                                                                              §§goto(addr0dd4);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0dc0:
                                                                           _loc40_ = §§pop();
                                                                           if(_loc42_ || Boolean(param1))
                                                                           {
                                                                              §§goto(addr0dd0);
                                                                           }
                                                                        }
                                                                        §§goto(addr0e0d);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0b2c:
                                                                        if(!(_loc9_ is IEmergencyInfrastructureVO))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc43_)
                                                                        {
                                                                           addr0bba:
                                                                           §§push(0);
                                                                           if(!(_loc43_ && Boolean(_loc3_)))
                                                                           {
                                                                              _loc40_ = §§pop();
                                                                              if(!_loc43_)
                                                                              {
                                                                                 §§push(this._playfieldObjectsProxy);
                                                                                 if(_loc42_)
                                                                                 {
                                                                                    _loc41_ = §§pop().playfieldSwitchObjects;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc41_,_loc40_));
                                                                                       if(_loc42_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!(_loc43_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             if(_loc42_)
                                                                                             {
                                                                                                if(_loc42_)
                                                                                                {
                                                                                                }
                                                                                                break loop18;
                                                                                             }
                                                                                             addr0c8c:
                                                                                             if(_loc43_ && Boolean(this))
                                                                                             {
                                                                                                break loop18;
                                                                                             }
                                                                                             §§goto(addr0c9c);
                                                                                          }
                                                                                          §§goto(addr0d03);
                                                                                       }
                                                                                       §§goto(addr0cf9);
                                                                                       _loc31_ = §§nextvalue(_loc40_,_loc41_);
                                                                                       _loc31_.iconVisibility = false;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0cce);
                                                                              }
                                                                              §§goto(addr0d13);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0c36:
                                                                              _loc40_ = §§pop();
                                                                              if(_loc42_)
                                                                              {
                                                                                 §§push(this._playfieldObjectsProxy);
                                                                                 if(!(_loc43_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    _loc41_ = §§pop().billboardList;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc41_,_loc40_));
                                                                                       if(_loc43_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc43_)
                                                                                       {
                                                                                          if(_loc42_ || Boolean(this))
                                                                                          {
                                                                                             §§goto(addr0c8c);
                                                                                          }
                                                                                          §§goto(addr0cbc);
                                                                                       }
                                                                                       §§goto(addr0e0b);
                                                                                       _loc32_ = §§nextvalue(_loc40_,_loc41_);
                                                                                       _loc32_.iconVisibility = true;
                                                                                    }
                                                                                    §§goto(addr0cf9);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0d40:
                                                                                 §§push(this._playfieldObjectsProxy);
                                                                                 if(_loc42_)
                                                                                 {
                                                                                    _loc41_ = §§pop().billboardList;
                                                                                    §§goto(addr0d7e);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr0dd4);
                                                                        }
                                                                     }
                                                                     §§goto(addr0b36);
                                                                  }
                                                                  §§goto(addr0b2c);
                                                               }
                                                            }
                                                            §§goto(addr0b15);
                                                         }
                                                         §§goto(addr0aed);
                                                      }
                                                      else
                                                      {
                                                         addr0a02:
                                                         §§pop().container.visible = true;
                                                         if(!_loc43_)
                                                         {
                                                            §§push(this._buffCoverageGridView);
                                                            if(_loc42_ || Boolean(param1))
                                                            {
                                                               §§push(_loc10_.width * this._playfieldProxy.tileSize);
                                                               if(!(_loc43_ && Boolean(_loc2_)))
                                                               {
                                                                  §§push(_loc10_.height * this._playfieldProxy.tileSize);
                                                                  if(!(_loc43_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc42_)
                                                                     {
                                                                        §§pop().setSize(§§pop(),§§pop(),§§pop());
                                                                        if(!_loc43_)
                                                                        {
                                                                           addr0a84:
                                                                           this._buffCoverageGridView.moveTo(_loc10_.x * this._playfieldProxy.tileSize,_loc10_.y * this._playfieldProxy.tileSize,1);
                                                                           addr0a82:
                                                                           addr0a76:
                                                                           addr0a6a:
                                                                           if(!_loc42_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(this._playFieldHighlightedObjectsProxy);
                                                                           if(!_loc43_)
                                                                           {
                                                                              if(§§pop() == null)
                                                                              {
                                                                                 if(_loc43_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 this._playFieldHighlightedObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
                                                                                 if(!_loc42_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§goto(addr0ac8);
                                                                           }
                                                                           §§goto(addr0ada);
                                                                        }
                                                                        §§goto(addr0b36);
                                                                     }
                                                                     §§goto(addr0a84);
                                                                  }
                                                                  §§goto(addr0a82);
                                                               }
                                                               §§goto(addr0a76);
                                                            }
                                                            §§goto(addr0a6a);
                                                         }
                                                      }
                                                      §§goto(addr0b0b);
                                                   }
                                                   else
                                                   {
                                                      _loc10_.x = _loc9_.matrixCoordinates.x - (_loc10_.width - _loc9_.configPlayfieldItemVo.sizeX) / 2;
                                                      if(_loc43_ && Boolean(_loc2_))
                                                      {
                                                         break;
                                                      }
                                                      _loc10_.y = _loc9_.matrixCoordinates.y - (_loc10_.height - _loc9_.configPlayfieldItemVo.sizeY) / 2;
                                                      if(!_loc43_)
                                                      {
                                                         §§push(this._buffCoverageGridView);
                                                         if(!(_loc43_ && Boolean(this)))
                                                         {
                                                            §§goto(addr0a02);
                                                         }
                                                         §§goto(addr0a6a);
                                                      }
                                                   }
                                                   §§goto(addr0bba);
                                                }
                                                §§goto(addr0b2c);
                                             }
                                             §§goto(addr0bba);
                                          }
                                       }
                                       §§goto(addr0959);
                                    }
                                    §§goto(addr0b2c);
                                 }
                                 §§goto(addr0b0b);
                              }
                              else
                              {
                                 addr0809:
                                 _loc10_ = new Rectangle(0,0,0,0);
                                 if(_loc42_)
                                 {
                                    if(_loc9_ is IEmergencyInfrastructureVO)
                                    {
                                       addr082b:
                                       _loc28_ = _loc9_ as IEmergencyInfrastructureVO;
                                       if(_loc42_ || Boolean(this))
                                       {
                                          _loc40_ = 0;
                                          if(_loc42_ || Boolean(param1))
                                          {
                                             for each(_loc29_ in _loc28_.listOfGrades)
                                             {
                                                §§push(_loc29_.rangeX);
                                                if(_loc42_ || Boolean(this))
                                                {
                                                   §§push(2);
                                                   if(_loc42_ || Boolean(_loc3_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc42_ || Boolean(param1))
                                                      {
                                                         if(§§pop() + _loc9_.configPlayfieldItemVo.sizeX > _loc10_.width)
                                                         {
                                                            if(_loc42_)
                                                            {
                                                               _loc10_.width = _loc29_.rangeX * 2 + _loc9_.configPlayfieldItemVo.sizeX;
                                                               if(_loc42_ || Boolean(_loc3_))
                                                               {
                                                                  addr08d9:
                                                                  addr08e1:
                                                                  addr08e0:
                                                                  addr08de:
                                                                  if(_loc29_.rangeY * 2 + _loc9_.configPlayfieldItemVo.sizeY <= _loc10_.height)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc42_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               _loc10_.height = _loc29_.rangeY * 2 + _loc9_.configPlayfieldItemVo.sizeY;
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr08d9);
                                                      }
                                                      §§goto(addr08e1);
                                                   }
                                                   §§goto(addr08e0);
                                                }
                                                §§goto(addr08de);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr091d);
                                 }
                                 §§goto(addr082b);
                              }
                           }
                           else
                           {
                              §§push(_loc9_ is DecorationFieldObjectVo);
                              if(_loc42_)
                              {
                                 addr07e7:
                                 var _temp_120:* = §§pop();
                                 §§push(_temp_120);
                                 if(!_temp_120)
                                 {
                                    if(_loc42_)
                                    {
                                       addr07f2:
                                       §§pop();
                                       if(_loc42_)
                                       {
                                          addr07ff:
                                          if(!(_loc9_ is InfrastructureBuildingFieldObjectVo))
                                          {
                                             return;
                                          }
                                          if(!_loc43_)
                                          {
                                             §§goto(addr0809);
                                          }
                                          §§goto(addr091d);
                                       }
                                       §§goto(addr0809);
                                    }
                                 }
                                 §§goto(addr07ff);
                              }
                              §§goto(addr07f2);
                           }
                           §§goto(addr0809);
                        }
                        §§goto(addr07e7);
                     case 13:
                        §§push(0);
                        if(!_loc43_)
                        {
                           _loc40_ = §§pop();
                           if(_loc42_)
                           {
                              §§push(this._playfieldObjectsProxy);
                              if(_loc42_ || Boolean(_loc3_))
                              {
                                 _loc41_ = §§pop().billboardList;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc41_,_loc40_));
                                    if(_loc42_)
                                    {
                                       if(§§pop())
                                       {
                                          continue;
                                       }
                                       if(!_loc43_)
                                       {
                                          if(!_loc43_)
                                          {
                                             if(!(_loc43_ && Boolean(_loc2_)))
                                             {
                                                §§goto(addr0bba);
                                             }
                                             §§goto(addr0c9c);
                                          }
                                          §§goto(addr0cbc);
                                       }
                                       §§goto(addr0da1);
                                    }
                                    §§goto(addr0e07);
                                    _loc30_ = §§nextvalue(_loc40_,_loc41_);
                                    _loc30_.iconVisibility = false;
                                 }
                              }
                              §§goto(addr0dd4);
                           }
                           §§goto(addr0cbc);
                        }
                        §§goto(addr0cac);
                     case 14:
                        §§push(0);
                        if(!(_loc43_ && Boolean(_loc2_)))
                        {
                           §§goto(addr0c36);
                        }
                        §§goto(addr0cac);
                     case 15:
                        §§push(0);
                        if(_loc42_ || Boolean(_loc3_))
                        {
                           _loc40_ = §§pop();
                           if(_loc42_ || Boolean(_loc3_))
                           {
                              §§goto(addr0d40);
                           }
                        }
                        else
                        {
                           §§goto(addr0dc0);
                        }
                        §§goto(addr0e0d);
                     case 16:
                        §§goto(addr0dc0);
                        §§push(0);
                     case 17:
                        _loc11_ = Object(param1.getBody());
                        _loc12_ = _loc11_.vo;
                        if(_loc42_ || Boolean(this))
                        {
                           §§push(Boolean(_loc11_.rollOver));
                           if(_loc42_)
                           {
                              _loc13_ = §§pop();
                              if(!(_loc42_ || Boolean(param1)))
                              {
                                 break;
                              }
                              if(_loc12_ == null)
                              {
                                 break;
                              }
                              if(!_loc42_)
                              {
                                 break;
                              }
                              §§push(_loc12_ is ShopFieldObjectVo);
                              if(!_loc43_)
                              {
                                 addr0e6f:
                                 if(§§pop())
                                 {
                                    if(_loc43_ && Boolean(param1))
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    if(_loc42_ || Boolean(this))
                                    {
                                       _loc40_ = §§pop();
                                       if(!_loc43_)
                                       {
                                          §§push(this._playfieldObjectsProxy);
                                          if(!_loc43_)
                                          {
                                             _loc41_ = §§pop().residentialList;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc41_,_loc40_));
                                                if(_loc42_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc36_ = §§nextvalue(_loc40_,_loc41_);
                                                      _loc36_.residentialFieldObjectVo.setHasThisNeed(_loc12_.configPlayfieldItemVo.id,_loc13_);
                                                      if(!_loc43_)
                                                      {
                                                         _loc36_.invalidateIconStateManager();
                                                      }
                                                      continue;
                                                   }
                                                   if(_loc42_)
                                                   {
                                                      if(_loc42_ || Boolean(param1))
                                                      {
                                                         if(_loc42_)
                                                         {
                                                            break loop18;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0ff6:
                                                         §§push(this._playfieldObjectsProxy);
                                                         if(!_loc43_)
                                                         {
                                                            addr1000:
                                                            _loc41_ = §§pop().residentialList;
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc41_,_loc40_));
                                                               if(!_loc43_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!_loc43_)
                                                                        {
                                                                           addr1045:
                                                                           if(_loc42_)
                                                                           {
                                                                              addr104d:
                                                                              if(_loc42_)
                                                                              {
                                                                              }
                                                                              break loop18;
                                                                           }
                                                                           addr10aa:
                                                                           addr10aa:
                                                                           if(_loc42_ || Boolean(_loc3_))
                                                                           {
                                                                              break loop18;
                                                                           }
                                                                           addr10db:
                                                                           addr10db:
                                                                           this._billboardGroup.sortChildren();
                                                                           if(_loc42_ || Boolean(param1))
                                                                           {
                                                                              addr10f2:
                                                                              this.isoScene.render(true);
                                                                           }
                                                                           break loop18;
                                                                        }
                                                                        break;
                                                                     }
                                                                     _loc38_ = §§nextvalue(_loc40_,_loc41_);
                                                                     _loc38_.residentialFieldObjectVo.setHasThisNeed();
                                                                     if(_loc42_ || Boolean(this))
                                                                     {
                                                                        _loc38_.invalidateIconStateManager();
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  addr103b:
                                                               }
                                                               else
                                                               {
                                                                  while(§§pop())
                                                                  {
                                                                     _loc39_ = §§nextvalue(_loc40_,_loc41_);
                                                                     _loc39_.shopFieldObjectVo.setFulfillsThisNeed();
                                                                     if(_loc42_ || Boolean(param1))
                                                                     {
                                                                        _loc39_.invalidateIconStateManager();
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc41_,_loc40_));
                                                                        break;
                                                                     }
                                                                  }
                                                                  addr10a4:
                                                               }
                                                               addr10a8:
                                                               §§goto(addr10aa);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr106f:
                                                            _loc41_ = §§pop().needShopList;
                                                         }
                                                         §§goto(addr10a1);
                                                      }
                                                      §§goto(addr10db);
                                                   }
                                                   §§goto(addr10a8);
                                                }
                                                §§goto(addr103b);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr0f33:
                                          §§push(this._playfieldObjectsProxy);
                                          if(!_loc43_)
                                          {
                                             _loc41_ = §§pop().needShopList;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc41_,_loc40_));
                                                if(_loc43_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   _loc37_ = §§nextvalue(_loc40_,_loc41_);
                                                   _loc37_.shopFieldObjectVo.setFulfillsThisNeed(_loc12_ as ResidentialFieldObjectVo,_loc13_);
                                                   if(!(_loc43_ && Boolean(_loc2_)))
                                                   {
                                                      _loc37_.invalidateIconStateManager();
                                                   }
                                                   continue;
                                                }
                                                if(_loc42_)
                                                {
                                                   if(_loc42_)
                                                   {
                                                      if(!(_loc43_ && Boolean(this)))
                                                      {
                                                         break loop18;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr106b:
                                                      §§goto(addr106f);
                                                      §§push(this._playfieldObjectsProxy);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr1045);
                                                }
                                                §§goto(addr10f2);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr1000);
                                          }
                                          §§goto(addr10a4);
                                       }
                                       §§goto(addr1000);
                                    }
                                    else
                                    {
                                       addr0fe6:
                                       _loc40_ = §§pop();
                                       if(_loc42_ || Boolean(this))
                                       {
                                          §§goto(addr0ff6);
                                       }
                                    }
                                    §§goto(addr104d);
                                 }
                                 else
                                 {
                                    §§push(_loc12_ is ResidentialFieldObjectVo);
                                    if(!_loc43_)
                                    {
                                       if(!§§pop())
                                       {
                                          break;
                                       }
                                       if(!(_loc43_ && Boolean(this)))
                                       {
                                          §§push(0);
                                          if(!_loc43_)
                                          {
                                             _loc40_ = §§pop();
                                             if(_loc42_)
                                             {
                                                §§goto(addr0f33);
                                             }
                                             §§goto(addr104d);
                                          }
                                          else
                                          {
                                             addr105b:
                                             _loc40_ = §§pop();
                                             if(_loc42_ || Boolean(this))
                                             {
                                                §§goto(addr106b);
                                             }
                                          }
                                          §§goto(addr10aa);
                                       }
                                       else
                                       {
                                          addr0fde:
                                          §§push(0);
                                          if(!_loc43_)
                                          {
                                             §§goto(addr0fe6);
                                          }
                                          else
                                          {
                                             §§goto(addr105b);
                                          }
                                       }
                                       §§goto(addr105b);
                                    }
                                    else
                                    {
                                       addr10ce:
                                       var _temp_146:* = §§pop();
                                       addr10d1:
                                       addr10cf:
                                       _loc15_ = §§pop();
                                       if(!_loc15_)
                                       {
                                          break;
                                       }
                                       if(!_loc43_)
                                       {
                                          §§goto(addr10db);
                                       }
                                    }
                                 }
                                 §§goto(addr10f2);
                              }
                              §§goto(addr10ce);
                           }
                           §§goto(addr0e6f);
                        }
                        §§goto(addr0fde);
                     case 18:
                        §§push(param1.getBody() as Boolean);
                        if(_loc42_)
                        {
                           var _temp_147:* = §§pop();
                           §§push(_temp_147);
                           §§push(_temp_147);
                           if(!(_loc43_ && Boolean(this)))
                           {
                              _loc14_ = §§pop();
                              if(!_loc43_)
                              {
                                 addr0fcc:
                                 if(§§pop())
                                 {
                                    if(_loc42_ || Boolean(_loc3_))
                                    {
                                       §§goto(addr0fde);
                                    }
                                    §§goto(addr10db);
                                 }
                                 else
                                 {
                                    §§push(0);
                                 }
                                 §§goto(addr105b);
                              }
                              else
                              {
                                 §§goto(addr10d1);
                              }
                           }
                           else
                           {
                              §§goto(addr10cf);
                           }
                           §§goto(addr10d1);
                        }
                        §§goto(addr0fcc);
                     case 19:
                        §§push(true);
                        if(_loc42_ || Boolean(param1))
                        {
                           §§goto(addr10ce);
                        }
                        §§goto(addr10d1);
                  }
                  return;
               }
               §§goto(addr1314);
            }
            §§goto(addr1304);
         }
         §§goto(addr1146);
      }
      
      private function buildValidPlayfieldExpansions() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
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
            if(_loc8_ || Boolean(_loc1_))
            {
               _loc3_.setSize(_loc5_.width * this._playfieldProxy.tileSize,_loc5_.height * this._playfieldProxy.tileSize,0);
               if(_loc8_ || Boolean(this))
               {
                  addr00cd:
                  _loc3_.moveTo(_loc5_.x * this._playfieldProxy.tileSize,_loc5_.y * this._playfieldProxy.tileSize,0);
                  if(_loc9_)
                  {
                     continue;
                  }
                  _loc3_.strokes = [new Stroke(0,0,0)];
                  if(_loc8_ || Boolean(_loc1_))
                  {
                     _loc3_.fills = [new SolidColorFill(1466372,0.2)];
                     if(!_loc9_)
                     {
                        ExpansionFieldObjectVo(_loc4_).rollOverRect = _loc3_;
                        addr0129:
                        if(!(_loc9_ && Boolean(_loc3_)))
                        {
                           addr0152:
                           this._playfieldObjectsProxy.addGameObjectByData(_loc4_);
                           if(!_loc8_)
                           {
                              continue;
                           }
                        }
                        sendNotification(ApplicationNotificationConstants.GENERATE_EXPANSION_GROUND,_loc3_);
                        continue;
                     }
                     §§goto(addr0152);
                  }
                  §§goto(addr0129);
               }
               §§goto(addr0152);
            }
            §§goto(addr00cd);
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._ePr);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this._ePr = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                  }
               }
               addr004c:
               return this._ePr;
            }
         }
         §§goto(addr004c);
      }
      
      public function get securityGradeHeatMapGroup() : IsoGroup
      {
         return this._securityGradeHeatMapGroup;
      }
   }
}

