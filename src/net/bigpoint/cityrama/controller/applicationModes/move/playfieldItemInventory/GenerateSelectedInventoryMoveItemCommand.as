package net.bigpoint.cityrama.controller.applicationModes.move.playfieldItemInventory
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationModes.move.FieldClickToPlaceInventoryMoveItemCommand;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryPlayfieldItemVo;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.view.field.ui.components.InteractiveObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.GameObjectFactory;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class GenerateSelectedInventoryMoveItemCommand extends SimpleCommand implements ICommand
   {
      
      private var _gridProxy:GridProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _preLoadServiceProxy:FilePreloadServiceProxy;
      
      private var _runtimeLoadServiceProxy:FileRuntimeLoadServiceProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _restrictionProxy:RestrictionProxy;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _moveProxy:FieldMoveProxy;
      
      public function GenerateSelectedInventoryMoveItemCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:BillboardObject = null;
         var _loc4_:ClientFieldObject = null;
         var _loc5_:BillboardObject = null;
         var _loc2_:InventoryPlayfieldItemVo = param1.getBody() as InventoryPlayfieldItemVo;
         if(!(_loc8_ && Boolean(this)))
         {
            if(_loc2_)
            {
               if(_loc9_)
               {
                  this.retrieveProxies();
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
                     if(!_loc8_)
                     {
                        addr006f:
                        facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
                     }
                  }
               }
               var _loc6_:int = 0;
               var _loc7_:* = this._playfieldObjectsProxy.billboardList;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc7_,_loc6_));
                  if(_loc8_ && Boolean(_loc3_))
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     _loc3_ = §§nextvalue(_loc6_,_loc7_);
                     if(_loc9_)
                     {
                        _loc3_.changeInteractionstate(false);
                     }
                     continue;
                  }
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     if(!(_loc8_ && Boolean(_loc3_)))
                     {
                        if(!(_loc8_ && Boolean(_loc3_)))
                        {
                           _loc6_ = 0;
                           if(!_loc8_)
                           {
                              addr00ee:
                              _loc7_ = this._playfieldObjectsProxy.clientFieldObjectsList;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc7_,_loc6_));
                                 break loop0;
                              }
                              addr0114:
                              addr010d:
                           }
                        }
                        _loc5_ = this.createFakeGameObject(_loc2_);
                        _loc5_.expandHitzone();
                        if(_loc9_)
                        {
                           PlayfieldObjectsProxy.addIconOffsets(_loc5_.billboardObjectVo,this._preLoadServiceProxy);
                           if(_loc9_)
                           {
                              §§push(this._restrictionProxy);
                              if(_loc9_ || Boolean(this))
                              {
                                 if(§§pop().getAllRestrictionsForItem(_loc5_.billboardObjectVo.configPlayfieldItemVo).length > 0)
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(this._restrictionProxy);
                                       if(_loc9_ || Boolean(_loc3_))
                                       {
                                          §§pop().restrictionGridSource = this._restrictionProxy.getAllRestrictionsForItem(_loc5_.billboardObjectVo.configPlayfieldItemVo);
                                          if(!_loc8_)
                                          {
                                             §§goto(addr01a8);
                                          }
                                          §§goto(addr032c);
                                       }
                                       §§goto(addr01a8);
                                    }
                                    §§goto(addr032c);
                                 }
                                 §§goto(addr01b2);
                              }
                              addr01a8:
                              this._restrictionProxy.restrictionGridVisibility = true;
                              if(!_loc8_)
                              {
                                 addr01b2:
                                 _loc5_.presentation.visible = true;
                                 if(_loc9_)
                                 {
                                    §§push(this._gridProxy);
                                    if(!_loc8_)
                                    {
                                       §§push(false);
                                       if(_loc9_)
                                       {
                                          §§pop().snapping = §§pop();
                                          if(!_loc8_)
                                          {
                                             addr01da:
                                             §§push(this._gridProxy);
                                             if(!_loc8_)
                                             {
                                                addr01e4:
                                                §§pop().setItemSize(_loc5_.billboardObjectVo.configPlayfieldItemVo.sizeX,_loc5_.billboardObjectVo.configPlayfieldItemVo.sizeY,_loc5_.billboardObjectVo.configPlayfieldItemVo.zLevels.length,VectorUtilities.getMinValue(_loc5_.billboardObjectVo.configPlayfieldItemVo.zLevels));
                                                if(!(_loc8_ && Boolean(param1)))
                                                {
                                                   addr022c:
                                                   this._gridProxy.tileGridVisiblity = true;
                                                   addr022b:
                                                   if(_loc9_)
                                                   {
                                                      _loc5_.updateIndex(_loc5_.billboardObjectVo.matrix3dCoordinates.x,_loc5_.billboardObjectVo.matrix3dCoordinates.y);
                                                      if(_loc9_)
                                                      {
                                                         addr0253:
                                                         _loc5_.moveTo(_loc5_.billboardObjectVo.matrix3dCoordinates.x * this._playfieldProxy.tileSize,_loc5_.billboardObjectVo.matrix3dCoordinates.y * this._playfieldProxy.tileSize,1);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(this._moveProxy);
                                                            if(_loc9_ || Boolean(_loc3_))
                                                            {
                                                               §§pop().objectToMove = _loc5_;
                                                               if(!_loc8_)
                                                               {
                                                                  addr02a4:
                                                                  this._moveProxy.originalPosition = new Cuboid();
                                                                  if(_loc9_)
                                                                  {
                                                                     addr02b4:
                                                                     sendNotification(ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,_loc5_);
                                                                     if(_loc9_)
                                                                     {
                                                                        addr02c6:
                                                                        _loc5_.billboardObjectVo.hideIconsForMoveMode = true;
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr02d4);
                                                                        }
                                                                        §§goto(addr02ea);
                                                                     }
                                                                     §§goto(addr031b);
                                                                  }
                                                                  addr02d4:
                                                                  this.addNeedIcons(_loc5_);
                                                                  if(_loc9_ || Boolean(_loc2_))
                                                                  {
                                                                     _loc5_.changeInteractionstate(true);
                                                                     addr02ea:
                                                                     if(_loc9_)
                                                                     {
                                                                        _loc5_.addEventListener(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this._playfieldObjectsProxy.onInteractiveClick);
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr031b:
                                                                           facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr032c:
                                                                              facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToPlaceInventoryMoveItemCommand);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr0339);
                                                            }
                                                            §§goto(addr02a4);
                                                         }
                                                         §§goto(addr02c6);
                                                      }
                                                      §§goto(addr02ea);
                                                   }
                                                   §§goto(addr02b4);
                                                }
                                                §§goto(addr02ea);
                                             }
                                             §§goto(addr022b);
                                          }
                                          §§goto(addr0253);
                                       }
                                       §§goto(addr022c);
                                    }
                                    §§goto(addr01e4);
                                 }
                                 §§goto(addr01da);
                              }
                              §§goto(addr0339);
                           }
                           §§goto(addr031b);
                        }
                        §§goto(addr02d4);
                     }
                     §§goto(addr00ee);
                  }
                  §§goto(addr0114);
               }
               while(§§pop())
               {
                  _loc4_ = §§nextvalue(_loc6_,_loc7_);
                  _loc4_.changeInteractionstate(true);
                  §§goto(addr010d);
               }
               §§goto(addr0114);
            }
            addr0339:
            return;
         }
         §§goto(addr006f);
      }
      
      private function createFakeGameObject(param1:InventoryPlayfieldItemVo) : BillboardObject
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:Number = Math.round(this._playfieldProxy.mouseMatrixPoint.x - param1.configItem.sizeX / 2);
         var _loc3_:Number = Math.round(this._playfieldProxy.mouseMatrixPoint.y - param1.configItem.sizeY / 2);
         §§push(VectorUtilities.getMinValue(param1.configItem.zLevels));
         if(_loc8_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:Cuboid = new Cuboid(_loc2_,_loc3_,_loc4_,param1.configItem.sizeX,param1.configItem.sizeY,param1.configItem.zLevels.length);
         var _loc6_:IGameObjectVo = ServerTagToClassSelector.getFieldObjectVoClassByTags(param1.configItem,_loc5_,this._timerProxy,this._configProxy,this._playfieldProxy);
         §§push(_loc6_ is BillboardObjectVo);
         if(!(_loc9_ && Boolean(this)))
         {
            var _temp_4:* = §§pop();
            §§push(_temp_4);
            §§push(_temp_4);
            if(!_loc9_)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     §§pop();
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        §§push(Boolean(param1.buildingDTO));
                        if(_loc8_ || Boolean(param1))
                        {
                           addr0105:
                           if(§§pop())
                           {
                              if(!_loc9_)
                              {
                                 BillboardObjectVo(_loc6_).buildingDTO = param1.buildingDTO;
                                 if(!_loc8_)
                                 {
                                    addr014f:
                                    addr0154:
                                    if(Boolean(param1.decorationVo))
                                    {
                                       if(!_loc9_)
                                       {
                                          DecorationFieldObjectVo(_loc6_).decorationVo = param1.decorationVo;
                                          addr015e:
                                       }
                                    }
                                 }
                              }
                              §§goto(addr0178);
                           }
                           else
                           {
                              §§push(_loc6_ is DecorationFieldObjectVo);
                              if(!_loc9_)
                              {
                                 var _temp_8:* = §§pop();
                                 addr0136:
                                 §§push(_temp_8);
                                 if(_temp_8)
                                 {
                                    if(!_loc9_)
                                    {
                                       addr0140:
                                       §§pop();
                                       if(!(_loc9_ && Boolean(_loc2_)))
                                       {
                                          §§goto(addr014f);
                                       }
                                       §§goto(addr015e);
                                    }
                                 }
                                 §§goto(addr0154);
                              }
                              §§goto(addr0140);
                           }
                        }
                        §§goto(addr0140);
                     }
                     addr0178:
                     var _loc7_:GameObjectFactory = new GameObjectFactory(this._preLoadServiceProxy.service,this._runtimeLoadServiceProxy.service,this._configProxy.config.tags);
                     return _loc7_.getBillboardObject(_loc6_ as BillboardObjectVo);
                  }
                  §§goto(addr0140);
               }
               §§goto(addr0105);
            }
            §§goto(addr0136);
         }
         §§goto(addr0140);
      }
      
      private function addNeedIcons(param1:BillboardObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(param1 is ShopFieldObject);
            if(_loc3_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     if(_loc3_ || Boolean(this))
                     {
                        addr0061:
                        if(param1 is ResidentialFieldObject)
                        {
                           if(_loc3_)
                           {
                              addr006a:
                              facade.sendNotification(ApplicationNotificationConstants.SHOW_NEED_ICONS,{
                                 "vo":param1.billboardObjectVo,
                                 "rollOver":false
                              });
                           }
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr0061);
         }
         §§goto(addr006a);
      }
      
      private function retrieveProxies() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._gridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
            if(!_loc2_)
            {
               this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
               if(_loc1_ || Boolean(this))
               {
                  this._preLoadServiceProxy = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
                  if(_loc1_ || Boolean(this))
                  {
                     this._runtimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
                     if(_loc1_)
                     {
                        this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                        if(_loc1_)
                        {
                           addr00a2:
                           this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr00c1);
                           }
                           §§goto(addr00ea);
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr00ea);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0107);
            }
            addr00c1:
            this._restrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
            if(!(_loc2_ && _loc1_))
            {
               addr00ea:
               this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
               if(_loc1_ || Boolean(this))
               {
                  addr0107:
                  this._moveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
               }
            }
            §§goto(addr0119);
         }
         addr0119:
      }
   }
}

