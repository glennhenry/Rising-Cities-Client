package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class DemolitionQueryMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "DemolitionQueryMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "DemolitionQueryMiniLayerMediator";
      }
      
      private var _billboardObject:BillboardObject;
      
      public function DemolitionQueryMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.onRegister();
            if(_loc1_)
            {
               this.addListener();
            }
         }
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc2_)
               {
                  addr0040:
                  §§push(this.component);
                  if(!_loc2_)
                  {
                     §§push(QueryMiniLayer.ACCEPT_CLICKED);
                     if(!_loc2_)
                     {
                        §§pop().addEventListener(§§pop(),this.handleClose);
                        if(!_loc2_)
                        {
                           addr0069:
                           §§push(this.component);
                           if(_loc1_)
                           {
                              §§push(QueryMiniLayer.CONFIRM_CLICKED);
                              if(_loc1_)
                              {
                                 §§pop().addEventListener(§§pop(),this.onConfirmDemolition);
                                 if(!_loc2_)
                                 {
                                    addr0092:
                                    this.component.addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                                    addr008c:
                                    addr0089:
                                 }
                                 return;
                              }
                              §§goto(addr0092);
                           }
                           §§goto(addr008c);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0069);
            }
            §§goto(addr008c);
         }
         §§goto(addr0040);
      }
      
      private function onConfirmDemolition(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            param1.stopPropagation();
            if(!(_loc2_ && Boolean(param1)))
            {
               §§push(this._billboardObject);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop().billboardObjectVo);
                  if(_loc3_ || Boolean(param1))
                  {
                     §§pop().userInteractionLocked = true;
                     if(!_loc2_)
                     {
                        §§push(this._billboardObject);
                        if(!_loc2_)
                        {
                           addr0062:
                           §§push(§§pop().billboardObjectVo);
                           if(_loc3_)
                           {
                              addr0069:
                              if(§§pop().configPlayfieldItemVo.destructionPhases.length > 0)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(this._billboardObject);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr009e:
                                       §§pop().billboardObjectVo.informationFloaterPhase = this._billboardObject.billboardObjectVo.configPlayfieldItemVo.destructionPhases[0];
                                       addr009c:
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00c0:
                                          sendNotification(ApplicationNotificationConstants.SHOW_FLOATER_ON_DESTROY,this._billboardObject);
                                          if(_loc2_)
                                          {
                                          }
                                       }
                                       addr0138:
                                       this.handleClose();
                                    }
                                    else
                                    {
                                       addr00dc:
                                       if(§§pop() is DecorationFieldObject)
                                       {
                                          if(_loc3_)
                                          {
                                             sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_DELETE,DecorationFieldObjectVo(this._billboardObject.billboardObjectVo).decorationVo.id);
                                             addr00e9:
                                             if(!_loc2_)
                                             {
                                                §§goto(addr0138);
                                             }
                                             §§goto(addr013d);
                                          }
                                          §§goto(addr0138);
                                       }
                                       else
                                       {
                                          sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_DELETE,this._billboardObject.billboardObjectVo.buildingDTO.id);
                                          if(!_loc2_)
                                          {
                                             §§goto(addr0138);
                                          }
                                       }
                                    }
                                    addr013d:
                                    return;
                                 }
                                 §§goto(addr00c0);
                              }
                              else
                              {
                                 §§push(this._billboardObject);
                              }
                              §§goto(addr00dc);
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr00e9);
                  }
                  §§goto(addr0069);
               }
               §§goto(addr0062);
            }
            §§goto(addr00e9);
         }
         §§goto(addr0138);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  param1.stopPropagation();
                  if(!_loc3_)
                  {
                     addr0043:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                  }
                  return;
               }
            }
         }
         §§goto(addr0043);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.removeListener();
            if(_loc1_ || _loc2_)
            {
               super.onRemove();
            }
         }
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(this.component);
                  if(!_loc2_)
                  {
                     addr0050:
                     §§push(QueryMiniLayer.ACCEPT_CLICKED);
                     if(!_loc2_)
                     {
                        §§pop().removeEventListener(§§pop(),this.handleClose);
                        if(_loc1_)
                        {
                           §§push(this.component);
                           if(!_loc2_)
                           {
                              §§push(QueryMiniLayer.CONFIRM_CLICKED);
                              if(_loc1_ || _loc1_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.onConfirmDemolition);
                                 if(!_loc2_)
                                 {
                                    addr00a2:
                                    this.component.removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                                    addr009c:
                                    addr0099:
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr00a2);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr009c);
               }
               addr00a9:
               return;
            }
            §§goto(addr0050);
         }
         §§goto(addr0099);
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            if(param1 is BillboardObject)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._billboardObject = BillboardObject(param1);
                  if(!_loc3_)
                  {
                     this._billboardObject.billboardObjectVo.userInteractionLocked = false;
                     if(!_loc3_)
                     {
                        addr006a:
                        this.setLayerData();
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr006a);
               }
            }
         }
         addr0070:
      }
      
      private function setLayerData() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:QueryMiniLayerVo = null;
         var _loc1_:Boolean = this._billboardObject.billboardObjectVo.configPlayfieldItemVo.destroyable;
         §§push(LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.title"));
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc1_)
            {
               §§goto(addr0050);
            }
            else
            {
               _loc2_ = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_ACCEPT);
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc2_.layerText = LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.flavour.indestructible");
                  if(_loc5_ || _loc3_)
                  {
                     addr011c:
                     _loc2_.acceptBtnLabel = LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.button.indestructible.capital");
                  }
                  §§goto(addr012c);
               }
               §§goto(addr011c);
            }
         }
         addr0050:
         _loc2_ = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.layerText = LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.flavour.improvements");
            if(!_loc4_)
            {
               _loc2_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.buttonOk");
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.buttonAbort");
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr012c:
                     _loc2_.title = _loc3_;
                     if(_loc5_ || _loc1_)
                     {
                        addr013f:
                        this.component.data = _loc2_;
                     }
                     §§goto(addr0145);
                  }
                  §§goto(addr013f);
               }
               §§goto(addr0145);
            }
            §§goto(addr013f);
         }
         addr0145:
      }
   }
}

