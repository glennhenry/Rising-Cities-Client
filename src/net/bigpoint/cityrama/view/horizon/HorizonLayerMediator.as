package net.bigpoint.cityrama.view.horizon
{
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.display.Sprite;
   import flash.geom.Point;
   import mx.core.FlexGlobals;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.MatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.horizon.HorizonProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.view.application.ui.components.MainView;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.SkinnableContainer;
   
   public class HorizonLayerMediator extends Mediator
   {
      
      public static const NAME:String = "HorizonLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "HorizonLayerMediator";
      }
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _matrixProxy:MatrixProxy;
      
      private var _filePreloadServiceProxy:FilePreloadServiceProxy;
      
      private var _horizonProxy:HorizonProxy;
      
      private var _fieldInfoLayerProxy:FieldInfoLayerProxy;
      
      private var _requestStarted:Boolean;
      
      private var _resizeHack:int;
      
      public function HorizonLayerMediator(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
            if(_loc3_)
            {
               addr002b:
               this._requestStarted = false;
               if(!_loc4_)
               {
                  this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
                  if(_loc3_ || _loc3_)
                  {
                     this._matrixProxy = MatrixProxy(facade.retrieveProxy(MatrixProxy.NAME));
                     if(_loc3_ || _loc3_)
                     {
                        addr008a:
                        this._filePreloadServiceProxy = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
                        if(_loc3_ || Boolean(param2))
                        {
                           this._fieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
                           if(!(_loc4_ && Boolean(param2)))
                           {
                              addr00d9:
                              this._horizonProxy = facade.retrieveProxy(HorizonProxy.NAME) as HorizonProxy;
                              if(!_loc4_)
                              {
                                 addr00f1:
                                 this._horizonProxy.loadResourceFile();
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    addr0108:
                                    this._resizeHack = 1;
                                 }
                                 §§goto(addr010e);
                              }
                              §§goto(addr0108);
                           }
                           addr010e:
                           return;
                        }
                        §§goto(addr0108);
                     }
                     §§goto(addr00d9);
                  }
               }
               §§goto(addr00f1);
            }
            §§goto(addr008a);
         }
         §§goto(addr002b);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc1_))
         {
            super.onRegister();
         }
         var _loc1_:Sprite = new Sprite();
         if(!_loc2_)
         {
            _loc1_.graphics.beginFill(7706950);
            if(!_loc2_)
            {
               _loc1_.graphics.drawRect(0,0,this.mainPresentation.width,this.mainPresentation.height);
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.graphics.endFill();
                  if(_loc3_)
                  {
                     addr008d:
                     this.horizonPresentation.addChild(_loc1_);
                  }
               }
               return;
            }
         }
         §§goto(addr008d);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FIELD_ZOOMED,ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS,ApplicationNotificationConstants.HORIZON_MAPFACTORY_READY,ApplicationNotificationConstants.FIELD_GENERATED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Sprite = null;
         var _loc3_:SkinnableContainer = null;
         var _loc4_:* = param1.getName();
         if(!(_loc5_ && Boolean(param1)))
         {
            §§push(ApplicationNotificationConstants.HORIZON_MAPFACTORY_READY);
            if(!(_loc5_ && Boolean(this)))
            {
               §§push(_loc4_);
               if(_loc6_ || Boolean(param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr01d1:
                        §§push(1);
                        if(_loc6_ || Boolean(param1))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS);
                     if(!_loc5_)
                     {
                        §§push(_loc4_);
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 §§goto(addr01d1);
                              }
                              else
                              {
                                 addr0244:
                                 §§push(3);
                                 if(_loc6_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.FIELD_ZOOMED);
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 addr01f8:
                                 §§push(_loc4_);
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    addr0208:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_ || Boolean(this))
                                       {
                                          addr0225:
                                          §§push(2);
                                          if(_loc5_ && Boolean(_loc3_))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0244);
                                       }
                                       §§goto(addr025c);
                                    }
                                    else
                                    {
                                       §§goto(addr0240);
                                    }
                                 }
                                 addr0240:
                                 §§goto(addr023e);
                              }
                              addr023e:
                              if(ApplicationNotificationConstants.FIELD_GENERATED === _loc4_)
                              {
                                 §§goto(addr0244);
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                           §§goto(addr025c);
                        }
                        §§goto(addr0208);
                     }
                     §§goto(addr01f8);
                  }
                  addr025c:
                  switch(§§pop())
                  {
                     case 0:
                        _loc2_ = param1.getBody() as Sprite;
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           this.horizonPresentation.addChild(_loc2_);
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              this.updateProxy();
                              if(_loc6_)
                              {
                                 break;
                              }
                           }
                           addr008e:
                           this._fieldInfoLayerProxy.isoView.panBy(this._resizeHack,this._resizeHack);
                           addr0087:
                           addr008b:
                           if(_loc6_ || Boolean(this))
                           {
                              §§push(this);
                              §§push(this._resizeHack % 4);
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§pop()._resizeHack = §§pop();
                              if(_loc6_ || Boolean(this))
                              {
                                 addr00d2:
                                 if(!this._horizonProxy.tiledMapReady)
                                 {
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       §§goto(addr00ec);
                                    }
                                 }
                                 this.updateProxy(true);
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    _loc3_ = this.mainPresentation as SkinnableContainer;
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       _loc3_.invalidateDisplayList();
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr00ec);
                           }
                           §§goto(addr00d2);
                        }
                        addr00ec:
                        return;
                     case 1:
                        §§push(this._fieldInfoLayerProxy);
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           §§push(§§pop().isoView);
                           if(_loc6_)
                           {
                              if(!§§pop())
                              {
                                 break;
                              }
                              if(_loc6_)
                              {
                                 §§goto(addr0087);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr008e);
                        }
                        §§goto(addr008b);
                     case 2:
                     case 3:
                        this.updateProxy();
                  }
                  return;
               }
               §§goto(addr0240);
            }
            §§goto(addr01f8);
         }
         §§goto(addr0225);
      }
      
      private function updateProxy(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:Point = IsoMath.isoToScreen(new Pt(0,0,0));
         var _loc3_:* = 1;
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            §§push(this._fieldInfoLayerProxy);
            if(!_loc7_)
            {
               §§push(§§pop().isoView);
               if(!(_loc7_ && param1))
               {
                  if(§§pop() != null)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr0069);
                     }
                  }
                  §§goto(addr0082);
               }
               addr0069:
               §§goto(addr0066);
            }
            addr0066:
            §§goto(addr0062);
         }
         addr0062:
         §§push(this._fieldInfoLayerProxy.isoView.currentZoom);
         if(_loc6_)
         {
            §§push(§§pop());
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               _loc3_ = §§pop();
               addr0082:
               §§push(0);
            }
         }
         var _loc4_:* = §§pop();
         var _loc5_:* = 0;
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            if(this._fieldInfoLayerProxy.isoView != null)
            {
               if(_loc6_)
               {
                  §§push(Math.round(-this._fieldInfoLayerProxy.isoView.currentX * _loc3_ + _loc2_.x + FlexGlobals.topLevelApplication.stage.stageWidth / 2));
                  if(!_loc7_)
                  {
                     _loc4_ = §§pop();
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        §§push(Math.round(-this._fieldInfoLayerProxy.isoView.currentY * _loc3_ + _loc2_.y + FlexGlobals.topLevelApplication.stage.stageHeight / 2));
                        if(!(_loc7_ && Boolean(this)))
                        {
                           addr013c:
                           _loc5_ = §§pop();
                           if(_loc7_)
                           {
                           }
                           addr0157:
                           this._horizonProxy.updatePosition(Math.round(_loc4_),Math.round(_loc5_),_loc3_,param1);
                        }
                        else
                        {
                           addr014f:
                           _loc5_ = §§pop();
                           if(!_loc7_)
                           {
                              §§goto(addr0157);
                           }
                        }
                     }
                     §§goto(addr0172);
                  }
                  §§goto(addr013c);
               }
               §§goto(addr0172);
            }
            else
            {
               §§push(-800);
            }
            §§goto(addr014f);
         }
         addr0172:
      }
      
      private function get mainPresentation() : Sprite
      {
         return viewComponent as MainView;
      }
      
      private function get horizonPresentation() : Sprite
      {
         var _loc1_:MainView = viewComponent as MainView;
         return Sprite(_loc1_.backgroundLayer);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         while(this.horizonPresentation.numChildren)
         {
            this.horizonPresentation.removeChildAt(0);
            if(!(_loc1_ || Boolean(this)))
            {
               break;
            }
         }
      }
   }
}

