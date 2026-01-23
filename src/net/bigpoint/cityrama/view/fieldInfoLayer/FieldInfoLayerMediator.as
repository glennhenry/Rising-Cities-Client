package net.bigpoint.cityrama.view.fieldInfoLayer
{
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayFieldHighlightedObjectsProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerConstructionVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerHeaderVo;
   import net.bigpoint.cityrama.view.field.FieldMediator;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   
   public class FieldInfoLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FieldInfoLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "FieldInfoLayerMediator";
      }
      
      private var _currentInfoLayer:FieldInfoComponent;
      
      private var _position:Point;
      
      private var _fieldInfoLayerProxy:FieldInfoLayerProxy;
      
      private var _highlightObjectsProxy:PlayFieldHighlightedObjectsProxy;
      
      public function FieldInfoLayerMediator(param1:Group)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this._fieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
            if(!_loc2_)
            {
               this._highlightObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
            }
         }
      }
      
      override public function onRemove() : void
      {
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_RESIDENTIAL,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PRODUCTION,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_DECORATION,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_POWERPLANT,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EXPANSION,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_NEEDSHOP,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_BOULDER,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EVENT_SQUARE,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_TOWNHALL,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EMERGENCY,ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_DECORATION,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_BUILDING,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SECURITY_GRADE,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_ACADEMY,ApplicationNotificationConstants
         .FIELD_INFOLAYER_SHOW_MYSTERYBUILDING,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_CINEMA,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SCHEDULED_DROP,ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS,ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED,ApplicationNotificationConstants.EVENTS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:BillboardObject = null;
         var _loc3_:FieldInfoLayerConstructionVo = null;
         if(!(_loc5_ && Boolean(this)))
         {
            if(param1.getBody() as BillboardObject)
            {
               if(_loc6_ || Boolean(param1))
               {
                  this._position = this.isoToStage(param1.getBody() as BillboardObject);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     _loc2_ = param1.getBody() as BillboardObject;
                     if(!_loc5_)
                     {
                        §§push(Boolean(_loc2_));
                        if(_loc6_)
                        {
                           var _temp_5:* = §§pop();
                           §§push(_temp_5);
                           if(_temp_5)
                           {
                              if(_loc6_ || Boolean(param1))
                              {
                                 §§pop();
                                 if(_loc6_)
                                 {
                                    §§push(param1.getName() == ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SECURITY_GRADE);
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       addr00b2:
                                       §§push(!§§pop());
                                       if(_loc6_)
                                       {
                                          addr00b9:
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && Boolean(param1)))
                                             {
                                                addr00d1:
                                                addr00cb:
                                                if(_loc2_.billboardObjectVo.isConnectedToStreet)
                                                {
                                                   §§goto(addr00d5);
                                                }
                                                §§goto(addr0124);
                                             }
                                             §§goto(addr00d5);
                                          }
                                          §§goto(addr0124);
                                       }
                                    }
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr00cb);
                              }
                              §§goto(addr00d1);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00b2);
                     }
                     addr00d5:
                     _loc3_ = this._fieldInfoLayerProxy.getVoForConstruction(_loc2_);
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        if(_loc3_)
                        {
                           if(_loc6_)
                           {
                              this.showInfoLayer("constructionInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo,_loc2_) as FieldInfoLayerHeaderVo);
                              if(!(_loc6_ || Boolean(_loc3_)))
                              {
                                 addr0124:
                                 §§push(_loc2_);
                                 if(!_loc5_)
                                 {
                                    var _temp_11:* = §§pop();
                                    §§push(_temp_11);
                                    §§push(_temp_11);
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             §§pop();
                                             if(_loc6_ || Boolean(this))
                                             {
                                                §§push(_loc2_.billboardObjectVo);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc5_)
                                                   {
                                                      addr0166:
                                                      var _temp_14:* = §§pop();
                                                      addr0167:
                                                      §§push(_temp_14);
                                                      if(_temp_14)
                                                      {
                                                         if(!(_loc5_ && Boolean(this)))
                                                         {
                                                            addr0179:
                                                            §§pop();
                                                            if(!(_loc5_ && Boolean(_loc3_)))
                                                            {
                                                               addr019d:
                                                               addr018b:
                                                               addr0188:
                                                               §§push(_loc2_.billboardObjectVo.isExpansionObject);
                                                               if(!(_loc5_ && Boolean(_loc2_)))
                                                               {
                                                                  addr019c:
                                                                  §§push(§§pop());
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     this.showInfoLayer("configItemInfoLayer",this._fieldInfoLayerProxy.getVoForConfig(_loc2_.billboardObjectVo.configPlayfieldItemVo) as FieldInfoLayerHeaderVo);
                                                                     if(!(_loc5_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§goto(addr01d1);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr0757:
                                                            var _loc4_:* = param1.getName();
                                                            if(!(_loc5_ && Boolean(param1)))
                                                            {
                                                               §§push(ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc5_ && Boolean(param1))
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0bdc:
                                                                           §§push(19);
                                                                           if(_loc5_)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_BUILDING);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc6_ || Boolean(_loc2_))
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc5_ && Boolean(param1))
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr0bdc);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_INFRASTRUCTURE_DECORATION);
                                                                                 if(_loc6_ || Boolean(param1))
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc6_ || Boolean(this))
                                                                                          {
                                                                                             §§push(2);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0a56:
                                                                                             §§push(12);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_RESIDENTIAL);
                                                                                          if(!(_loc5_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(!(_loc5_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(!(_loc5_ && Boolean(param1)))
                                                                                                   {
                                                                                                      §§push(3);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr09a2:
                                                                                                      §§push(9);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PRODUCTION);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(4);
                                                                                                               if(_loc6_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr08ed:
                                                                                                               §§push(6);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_DECORATION);
                                                                                                            if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               if(_loc6_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(5);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0968:
                                                                                                                        §§push(8);
                                                                                                                        if(_loc6_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_POWERPLANT);
                                                                                                                     if(_loc6_ || Boolean(this))
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           if(§§pop() === §§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 §§goto(addr08ed);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr0968);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EXPANSION);
                                                                                                                              if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 addr090c:
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(_loc6_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    addr091c:
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§push(7);
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0a8f:
                                                                                                                                          §§push(13);
                                                                                                                                          if(_loc5_ && Boolean(_loc2_))
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_NEEDSHOP);
                                                                                                                                       if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(_loc6_ || Boolean(_loc3_))
                                                                                                                                          {
                                                                                                                                             addr0956:
                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0968);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr09a2);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_BOULDER);
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr09a2);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr0bf3:
                                                                                                                                                            §§push(20);
                                                                                                                                                            if(_loc5_ && Boolean(param1))
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0c13);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EVENT_SQUARE);
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            if(_loc6_ || Boolean(this))
                                                                                                                                                            {
                                                                                                                                                               addr09c9:
                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_ || Boolean(this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(10);
                                                                                                                                                                     if(_loc6_ || Boolean(this))
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr0b0b:
                                                                                                                                                                     §§push(15);
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_TOWNHALL);
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() === §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(11);
                                                                                                                                                                              if(_loc6_ || Boolean(param1))
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr0b67:
                                                                                                                                                                              §§push(17);
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_EMERGENCY);
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              addr0a34:
                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                              if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0a44:
                                                                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc5_ && Boolean(param1)))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr0a56);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0ba0:
                                                                                                                                                                                       §§push(18);
                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SECURITY_GRADE);
                                                                                                                                                                                    if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0a75:
                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr0a8f);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr0bdc);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_ACADEMY);
                                                                                                                                                                                             if(_loc6_ || Boolean(this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0ab7:
                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(14);
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr0bdc);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_CINEMA);
                                                                                                                                                                                                      if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0af9:
                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0b01:
                                                                                                                                                                                                            if(§§pop() === §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr0b0b);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr0b67);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_SCHEDULED_DROP);
                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr0b2b:
                                                                                                                                                                                                                     if(§§pop() === §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(16);
                                                                                                                                                                                                                           if(_loc5_ && Boolean(param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr0ba0);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_MYSTERYBUILDING);
                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0b55:
                                                                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr0b5d:
                                                                                                                                                                                                                              if(§§pop() === §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr0b67);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr0bdc);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                                                                    if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0b8e:
                                                                                                                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc6_ || Boolean(_loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr0ba0);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr0bdc);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(ApplicationNotificationConstants.EVENTS_CHANGED);
                                                                                                                                                                                                                                          if(_loc6_ || Boolean(param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr0bbf:
                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr0bc7:
                                                                                                                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr0bdc);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr0bf3);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr0bef);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr0bf3);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr0bef:
                                                                                                                                                                                                                                             §§goto(addr0bed);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr0bed:
                                                                                                                                                                                                                                          if(ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED === _loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr0bf3);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(21);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0c13);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0c13);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0bef);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0bed);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0c13);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0b8e);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0bbf);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0c13);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0bc7);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0b55);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0c13);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0b5d);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0bbf);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0c13);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0b2b);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0af9);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0c13);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0b01);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0bed);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0c13);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0b8e);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0a75);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0c13);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0b01);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0ab7);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0c13);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0bc7);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0af9);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0b2b);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0bbf);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0c13);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0b01);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0a34);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0c13);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0bc7);
                                                                                                                              }
                                                                                                                              §§goto(addr0af9);
                                                                                                                           }
                                                                                                                           §§goto(addr0c13);
                                                                                                                        }
                                                                                                                        §§goto(addr0b01);
                                                                                                                     }
                                                                                                                     §§goto(addr0a75);
                                                                                                                  }
                                                                                                                  §§goto(addr0c13);
                                                                                                               }
                                                                                                               §§goto(addr09c9);
                                                                                                            }
                                                                                                            §§goto(addr0a34);
                                                                                                         }
                                                                                                         §§goto(addr0c13);
                                                                                                      }
                                                                                                      §§goto(addr0956);
                                                                                                   }
                                                                                                   §§goto(addr0b55);
                                                                                                }
                                                                                                §§goto(addr0c13);
                                                                                             }
                                                                                             §§goto(addr09c9);
                                                                                          }
                                                                                          §§goto(addr090c);
                                                                                       }
                                                                                       §§goto(addr0c13);
                                                                                    }
                                                                                    §§goto(addr0bc7);
                                                                                 }
                                                                                 §§goto(addr0a34);
                                                                              }
                                                                              §§goto(addr0c13);
                                                                           }
                                                                           §§goto(addr091c);
                                                                        }
                                                                        §§goto(addr0af9);
                                                                     }
                                                                     addr0c13:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           break;
                                                                        case 1:
                                                                           §§push(_loc2_.billboardObjectVo);
                                                                           if(_loc6_ || Boolean(this))
                                                                           {
                                                                              §§push(§§pop().isConnectedToStreet);
                                                                              if(_loc6_ || Boolean(param1))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr0308:
                                                                                    this.showInfoLayer("productionInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                                    if(_loc5_ && Boolean(_loc3_))
                                                                                    {
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 this.showInfoLayer("infrastructureBuildingInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,_loc2_.billboardObjectVo);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr03ea:
                                                                                    this.showInfoLayer("needsInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,(_loc2_ as ShopFieldObject).shopFieldObjectVo);
                                                                                    if(_loc5_ && Boolean(_loc3_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr0428:
                                                                                    this.addNeedIcons(_loc2_);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr05b7:
                                                                                    §§push(this._currentInfoLayer);
                                                                                    if(_loc6_ || Boolean(this))
                                                                                    {
                                                                                       if(§§pop().styleName == "needsInfoLayer")
                                                                                       {
                                                                                          if(!(_loc6_ || Boolean(param1)))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr05ef:
                                                                                          sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr0611:
                                                                                             §§push(this._highlightObjectsProxy);
                                                                                             if(!(_loc5_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                §§pop().resetHighlight();
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr073f:
                                                                                                   this.removeInfoLayer();
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr06b8:
                                                                                                §§pop().resetHighlight();
                                                                                                if(_loc5_ && Boolean(param1))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             addr0700:
                                                                                             this.removeInfoLayer();
                                                                                             if(_loc6_)
                                                                                             {
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr06b4:
                                                                                          §§push(this._highlightObjectsProxy);
                                                                                          §§goto(addr06b8);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(this._currentInfoLayer);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr063b:
                                                                                             §§push(§§pop().styleName == "infrastructureBuildingInfoLayer");
                                                                                             if(_loc6_ || Boolean(this))
                                                                                             {
                                                                                                var _temp_50:* = §§pop();
                                                                                                §§push(_temp_50);
                                                                                                if(!_temp_50)
                                                                                                {
                                                                                                   if(_loc6_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      addr0662:
                                                                                                      §§pop();
                                                                                                      if(!(_loc5_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§push(this._currentInfoLayer);
                                                                                                         if(_loc6_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            addr0689:
                                                                                                            if(§§pop().styleName == "infrastructureDecorationInfoLayer")
                                                                                                            {
                                                                                                               if(!(_loc5_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  addr069b:
                                                                                                                  sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                                                                                                                  if(_loc6_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     §§goto(addr06b4);
                                                                                                                  }
                                                                                                                  §§goto(addr0700);
                                                                                                               }
                                                                                                               §§goto(addr06b4);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this._currentInfoLayer);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr06d8:
                                                                                                                  if(§§pop().styleName == "residentialInfoLayer")
                                                                                                                  {
                                                                                                                     if(_loc5_ && Boolean(param1))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr06ef:
                                                                                                                     sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr073f);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0700);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr071a:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc5_ && Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr0730:
                                                                                                                  if(this._currentInfoLayer.styleName != "citySquareInfoLayer")
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr073f);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr06d8);
                                                                                                      }
                                                                                                      §§goto(addr06ef);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0689);
                                                                                          }
                                                                                          §§goto(addr06d8);
                                                                                       }
                                                                                       §§goto(addr0700);
                                                                                    }
                                                                                    §§goto(addr063b);
                                                                                 }
                                                                                 §§goto(addr0700);
                                                                              }
                                                                              §§goto(addr0689);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0366:
                                                                              §§push(§§pop().isConnectedToStreet);
                                                                              if(_loc6_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr0377:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    this.showInfoLayer("decorationInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr05b7);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0513:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr051d:
                                                                                 this.showInfoLayer("academyInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr069b);
                                                                        case 2:
                                                                           this.showInfoLayer("infrastructureDecorationInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                           if(_loc6_)
                                                                           {
                                                                              sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,_loc2_.billboardObjectVo);
                                                                              if(_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr051d);
                                                                           }
                                                                           §§goto(addr0700);
                                                                        case 3:
                                                                           §§push(_loc2_.billboardObjectVo);
                                                                           if(!(_loc5_ && Boolean(this)))
                                                                           {
                                                                              §§push(§§pop().isConnectedToStreet);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    this.showInfoLayer("residentialInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                                    if(_loc5_ && Boolean(_loc3_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    this.addNeedIcons(_loc2_);
                                                                                    if(!(_loc5_ && Boolean(param1)))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr03ea);
                                                                                 }
                                                                                 §§goto(addr0428);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr0377);
                                                                              }
                                                                              §§goto(addr05b7);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr0366);
                                                                           }
                                                                        case 4:
                                                                           §§push(_loc2_.billboardObjectVo);
                                                                           if(_loc6_ || Boolean(this))
                                                                           {
                                                                              §§push(§§pop().isConnectedToStreet);
                                                                              if(_loc6_ || Boolean(_loc2_))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc5_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§goto(addr0308);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr0662);
                                                                              }
                                                                              §§goto(addr073f);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr050a:
                                                                              §§push(§§pop().isConnectedToStreet);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr0513);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr0662);
                                                                              }
                                                                           }
                                                                           §§goto(addr0662);
                                                                        case 5:
                                                                           this.showInfoLayer("decorationInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                           if(_loc5_)
                                                                           {
                                                                           }
                                                                           break;
                                                                        case 6:
                                                                           §§push(_loc2_.billboardObjectVo);
                                                                           if(_loc6_ || Boolean(_loc3_))
                                                                           {
                                                                              §§goto(addr0366);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr03cf:
                                                                              §§push(§§pop().isConnectedToStreet);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc5_ && Boolean(param1)))
                                                                                 {
                                                                                    §§goto(addr03ea);
                                                                                 }
                                                                                 §§goto(addr06ef);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr0513);
                                                                              }
                                                                              §§goto(addr069b);
                                                                           }
                                                                        case 7:
                                                                           this.showInfoLayer("expansionInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr051d);
                                                                           break;
                                                                        case 8:
                                                                           §§push(_loc2_.billboardObjectVo);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr03cf);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr050a);
                                                                           }
                                                                        case 9:
                                                                           this.showInfoLayer("boulderInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                           if(!(_loc5_ && Boolean(param1)))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr0611);
                                                                           break;
                                                                        case 10:
                                                                           this.showInfoLayer("citySquareInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                           if(_loc6_ || Boolean(param1))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr06ef);
                                                                           break;
                                                                        case 11:
                                                                           this.showInfoLayer("townHallInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                           if(!(_loc5_ && Boolean(_loc2_)))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr06ef);
                                                                           break;
                                                                        case 12:
                                                                           this.showInfoLayer("emergencyInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                           if(_loc5_ && Boolean(_loc2_))
                                                                           {
                                                                           }
                                                                           break;
                                                                        case 13:
                                                                           this.showInfoLayer("securityGradeInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr0700);
                                                                           break;
                                                                        case 14:
                                                                           §§goto(addr050a);
                                                                           §§push(_loc2_.billboardObjectVo);
                                                                        case 15:
                                                                           this.showInfoLayer("cinemaInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr05ef);
                                                                           break;
                                                                        case 16:
                                                                           this.showInfoLayer("scheduledDropInfoLayer",this._fieldInfoLayerProxy.getVoForView(_loc2_.billboardObjectVo) as FieldInfoLayerHeaderVo);
                                                                           if(!(_loc5_ && Boolean(this)))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr05b7);
                                                                           break;
                                                                        case 17:
                                                                           break;
                                                                        case 18:
                                                                           §§push(this._currentInfoLayer);
                                                                           if(_loc6_ || Boolean(this))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc5_ && Boolean(this)))
                                                                                 {
                                                                                    §§goto(addr05b7);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0700);
                                                                           }
                                                                           §§goto(addr0730);
                                                                        case 19:
                                                                        case 20:
                                                                           §§push(this._currentInfoLayer);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr071a);
                                                                           }
                                                                           §§goto(addr0730);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr0a44);
                                                               }
                                                               §§goto(addr0a34);
                                                            }
                                                            §§goto(addr09a2);
                                                         }
                                                      }
                                                      §§goto(addr019d);
                                                   }
                                                   §§goto(addr0179);
                                                }
                                                §§goto(addr018b);
                                             }
                                             §§goto(addr0188);
                                          }
                                       }
                                       §§goto(addr0166);
                                    }
                                    §§goto(addr0167);
                                 }
                                 §§goto(addr019c);
                              }
                           }
                           §§goto(addr0123);
                        }
                        §§goto(addr0124);
                     }
                     addr0123:
                     return;
                  }
                  §§goto(addr0188);
               }
               §§goto(addr0757);
            }
            §§goto(addr0124);
         }
         addr01d1:
      }
      
      private function showInfoLayer(param1:String, param2:FieldInfoLayerHeaderVo) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            this.removeInfoLayer();
            if(!_loc4_)
            {
               if(param2)
               {
                  if(_loc3_)
                  {
                     §§push(this._currentInfoLayer);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        if(!§§pop())
                        {
                           if(_loc3_)
                           {
                              this._currentInfoLayer = new FieldInfoComponent();
                              if(!_loc4_)
                              {
                                 addr0063:
                                 §§push(this._currentInfoLayer);
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    §§pop().styleName = param1;
                                    if(_loc3_)
                                    {
                                       addr008b:
                                       §§push(this._currentInfoLayer);
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr009c:
                                          if(!§§pop().parent)
                                          {
                                             if(_loc3_)
                                             {
                                                this.component.addElement(this._currentInfoLayer);
                                                if(_loc3_)
                                                {
                                                   addr00b8:
                                                   §§push(this._currentInfoLayer);
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      addr00c9:
                                                      §§push(true);
                                                      if(!_loc4_)
                                                      {
                                                         §§pop().includeInLayout = §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            addr00d8:
                                                            §§push(this._currentInfoLayer);
                                                            if(!(_loc4_ && Boolean(this)))
                                                            {
                                                               addr00f8:
                                                               §§pop().visible = true;
                                                               addr00f7:
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(this._currentInfoLayer);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr010a:
                                                                     §§pop().position = this._position;
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        addr0124:
                                                                        this._currentInfoLayer.data = param2;
                                                                        addr0120:
                                                                     }
                                                                     §§goto(addr0127);
                                                                  }
                                                                  §§goto(addr0124);
                                                               }
                                                               §§goto(addr0120);
                                                            }
                                                            §§goto(addr0124);
                                                         }
                                                         §§goto(addr0120);
                                                      }
                                                      §§goto(addr00f8);
                                                   }
                                                   §§goto(addr00f7);
                                                }
                                                §§goto(addr0127);
                                             }
                                          }
                                          §§goto(addr00b8);
                                       }
                                       §§goto(addr010a);
                                    }
                                    §§goto(addr0120);
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr00d8);
                           }
                           §§goto(addr0063);
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr00b8);
               }
            }
            addr0127:
            return;
         }
         §§goto(addr008b);
      }
      
      private function isoToStage(param1:BillboardObject) : Point
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:Point = null;
         var _loc2_:FieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
         var _loc3_:FieldMediator = facade.retrieveMediator(FieldMediator.NAME) as FieldMediator;
         var _loc5_:Pt = IsoMath.isoToScreen(new Pt(param1.x + param1.width / 2,param1.y + param1.length / 2,_loc2_.isoView.currentZoom));
         _loc4_ = _loc3_.isoScene.container.localToGlobal(new Point(_loc5_.x,_loc5_.y));
         _loc4_.x = Math.round(_loc4_.x);
         if(_loc6_ || Boolean(param1))
         {
            _loc4_.y = Math.round(_loc4_.y);
         }
         return _loc4_;
      }
      
      private function removeInfoLayer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._currentInfoLayer);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr004d:
                     if(this._currentInfoLayer.parent)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           addr006b:
                           this.component.removeElement(this._currentInfoLayer);
                           if(_loc1_ || Boolean(this))
                           {
                              addr0083:
                              this._currentInfoLayer = null;
                           }
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr0083);
                  }
               }
               addr0088:
               return;
            }
            §§goto(addr004d);
         }
         §§goto(addr006b);
      }
      
      public function get component() : Group
      {
         return super.viewComponent as Group;
      }
      
      private function addNeedIcons(param1:BillboardObject) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = null;
         if(!_loc3_)
         {
            §§push(param1 is ShopFieldObject);
            if(!_loc3_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(_loc4_)
                  {
                     addr0033:
                     §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        §§goto(addr0053);
                     }
                     §§goto(addr0057);
                  }
               }
               addr0053:
               if(param1 is ResidentialFieldObject)
               {
                  addr0057:
                  _loc2_ = new Object();
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     _loc2_.vo = param1.billboardObjectVo;
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_.rollOver = true;
                        if(!_loc3_)
                        {
                           facade.sendNotification(ApplicationNotificationConstants.SHOW_NEED_ICONS,_loc2_);
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr0033);
         }
         §§goto(addr0057);
      }
   }
}

