package net.bigpoint.cityrama.view.dropIcons
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadDynamicServiceProxy;
   import net.bigpoint.cityrama.view.field.FieldViewPortMediator;
   import net.bigpoint.cityrama.view.field.ViewForegroundMediator;
   import net.bigpoint.cityrama.view.field.strategys.DropIcon2DAnimationStrategyHQ;
   import net.bigpoint.cityrama.view.field.strategys.IDropIconAnimationStrategy;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.core.SpriteVisualElement;
   
   public class DropIconsMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "DropIconsMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "DropIconsMediator";
      }
      
      private var _fileRuntimeLoadServiceProxy:FileRuntimeLoadDynamicServiceProxy;
      
      private var _loadTaskTriggered:Boolean;
      
      private var _preloadDoneNotification:String;
      
      private var _dropIconQueue:Vector.<DropIconVO>;
      
      private var _animationStrategy:IDropIconAnimationStrategy;
      
      private var _fieldViewPortMediator:FieldViewPortMediator;
      
      public function DropIconsMediator(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super(param1,param2);
            if(!_loc4_)
            {
               this._dropIconQueue = new Vector.<DropIconVO>();
               if(!_loc4_)
               {
                  this._fileRuntimeLoadServiceProxy = facade.retrieveProxy(FileRuntimeLoadDynamicServiceProxy.NAME) as FileRuntimeLoadDynamicServiceProxy;
                  if(_loc3_)
                  {
                     this._animationStrategy = new DropIcon2DAnimationStrategyHQ();
                     if(_loc3_)
                     {
                        addr0082:
                        this._animationStrategy.prepare(facade);
                        if(_loc3_)
                        {
                           this._fieldViewPortMediator = facade.retrieveMediator(FieldViewPortMediator.NAME) as FieldViewPortMediator;
                           if(!_loc4_)
                           {
                              addr00ab:
                              this.assetsAvailable();
                           }
                        }
                        §§goto(addr00b0);
                     }
                  }
                  §§goto(addr00ab);
               }
               addr00b0:
               return;
            }
            §§goto(addr00ab);
         }
         §§goto(addr0082);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.POPUP_REMOVE,ApplicationNotificationConstants.POPUP_CREATE,ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§push(ApplicationNotificationConstants.POPUP_REMOVE);
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§push(0);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                        }
                     }
                     else
                     {
                        addr00cd:
                        §§push(1);
                        if(_loc3_ && Boolean(_loc2_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.POPUP_CREATE);
                     if(!_loc3_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr00b2:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr00cd);
                              }
                              else
                              {
                                 addr00ea:
                                 §§push(2);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              §§goto(addr0102);
                           }
                           else
                           {
                              §§goto(addr00e6);
                           }
                        }
                        addr00e6:
                        §§goto(addr00e5);
                     }
                     addr00e5:
                     if(ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP === _loc2_)
                     {
                        §§goto(addr00ea);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr0102);
                  }
                  addr0102:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                        break;
                     case 2:
                        this.dropIsoIcon(param1.getBody() as DropIconVO);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                        }
                  }
                  return;
               }
               §§goto(addr00b2);
            }
            §§goto(addr00e5);
         }
         §§goto(addr00cd);
      }
      
      private function drop2dIcon(param1:DropIconVO) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:Point = null;
         if(_loc7_)
         {
            if(!this.assetsAvailable())
            {
               if(_loc7_ || Boolean(param1))
               {
                  this._dropIconQueue.push(param1);
                  if(!_loc6_)
                  {
                     §§goto(addr0047);
                  }
               }
            }
            var _loc2_:DisplayObject = this.generateDropIcon(param1.type,param1.isEventGood);
            var _loc3_:ViewForegroundMediator = facade.retrieveMediator(ViewForegroundMediator.NAME) as ViewForegroundMediator;
            if(_loc7_)
            {
               if(param1.isoTo2D)
               {
                  _loc4_ = Sprite(_loc3_.getViewComponent()).localToGlobal(param1.startPoint);
                  addr0078:
                  if(!_loc6_)
                  {
                     §§goto(addr00ba);
                  }
                  §§goto(addr00c7);
               }
               else
               {
                  _loc4_ = new Point(param1.startPoint.x,param1.startPoint.y);
               }
               addr00ba:
               _loc2_.x = _loc4_.x;
               if(_loc7_)
               {
                  addr00c7:
                  _loc2_.y = _loc4_.y;
               }
               var _loc5_:FieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
               if(!_loc6_)
               {
                  _loc2_.scaleX = _loc5_.isoView.currentZoom;
                  if(!_loc6_)
                  {
                     _loc2_.scaleY = _loc5_.isoView.currentZoom;
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        addr0121:
                        this.component.addChild(_loc2_);
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           this._animationStrategy.drop(_loc2_,param1);
                        }
                     }
                     §§goto(addr0143);
                  }
                  §§goto(addr0121);
               }
               addr0143:
               return;
            }
            §§goto(addr0078);
         }
         addr0047:
      }
      
      private function dropIsoIcon(param1:DropIconVO) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            if(!this.assetsAvailable())
            {
               if(_loc4_ || _loc3_)
               {
                  this._dropIconQueue.push(param1);
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr005c);
                  }
               }
            }
            var _loc2_:DisplayObject = this.generateDropIcon(param1.type,param1.isEventGood);
            if(!(_loc3_ && _loc3_))
            {
               sendNotification(ApplicationNotificationConstants.ISOVIEW_DROPICON_DROP,{
                  "presentation":_loc2_,
                  "data":param1
               });
            }
            return;
         }
         addr005c:
      }
      
      private function clean() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(this.component.numChildren > 0)
         {
            this.component.removeChildAt(0);
            if(!(_loc2_ || Boolean(this)))
            {
               break;
            }
         }
      }
      
      private function generateDropIcon(param1:String, param2:Boolean) : Sprite
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:Bitmap = null;
         var _loc4_:EventProxy = super.facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         if(_loc6_)
         {
            if(param2)
            {
               addr003a:
               §§push(this._fileRuntimeLoadServiceProxy);
               if(_loc6_)
               {
                  §§push(§§pop().service);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     §§push(_loc4_.currentRunningEventQuestGfxId + "_gui_infield_dropIcons");
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        §§push("drop_");
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           §§push(param1);
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc6_)
                              {
                                 addr00a2:
                                 _loc3_ = §§pop().getBitmap(§§pop(),§§pop());
                              }
                              else
                              {
                                 addr00d9:
                                 _loc3_ = §§pop().getBitmap(§§pop(),§§pop());
                              }
                              var _loc5_:Sprite = new Sprite();
                              _loc5_.addChild(_loc3_);
                              return _loc5_;
                           }
                           addr00d8:
                           §§push(§§pop() + §§pop());
                           §§goto(addr00d9);
                        }
                        §§goto(addr00a2);
                     }
                     else
                     {
                        addr00c5:
                        §§push("drop_");
                        if(_loc6_ || Boolean(this))
                        {
                           §§goto(addr00d8);
                           §§push(param1);
                        }
                     }
                     §§goto(addr00d9);
                  }
                  else
                  {
                     addr00c2:
                     §§push("gui_infield_dropIcons");
                  }
                  §§goto(addr00c5);
               }
               else
               {
                  addr00bf:
                  §§push(§§pop().service);
               }
               §§goto(addr00c2);
            }
            else
            {
               §§push(this._fileRuntimeLoadServiceProxy);
            }
            §§goto(addr00bf);
         }
         §§goto(addr003a);
      }
      
      public function resumeDropAfterLoading(param1:DropIconVO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1.state);
            if(!(_loc2_ && _loc3_))
            {
               §§push(DropIconVO.STATE_BOUNCE);
               if(_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc3_)
                     {
                        this.dropIsoIcon(param1);
                        if(_loc2_ && Boolean(this))
                        {
                        }
                     }
                  }
                  else
                  {
                     addr007f:
                     addr0079:
                     if(param1.state == DropIconVO.STATE_FLY)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.drop2dIcon(param1);
                        }
                     }
                  }
                  §§goto(addr0097);
               }
               §§goto(addr007f);
            }
            §§goto(addr0079);
         }
         addr0097:
      }
      
      private function assetsAvailable() : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = null;
         if(_loc3_)
         {
            §§push(this._loadTaskTriggered);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr002f:
                     §§push(false);
                     if(_loc3_)
                     {
                        §§goto(addr0035);
                     }
                     else
                     {
                        addr0056:
                        if(!§§pop())
                        {
                           addr0066:
                           _loc1_ = ["gui_infield_dropIcons"];
                           if(_loc3_)
                           {
                              this._preloadDoneNotification = "preloadDoneNotification_DropIcons";
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(this._fileRuntimeLoadServiceProxy);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop().service);
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       §§pop().addEventListener(this._preloadDoneNotification,this.handleIconsLoaded);
                                       if(_loc3_)
                                       {
                                          §§goto(addr00c5);
                                       }
                                       §§goto(addr00df);
                                    }
                                    addr00c5:
                                    this._fileRuntimeLoadServiceProxy.service.checkSWFArrayLoaded(_loc1_,this._preloadDoneNotification);
                                    §§goto(addr00c2);
                                 }
                                 addr00c2:
                                 if(_loc3_)
                                 {
                                    addr00d3:
                                    this._loadTaskTriggered = true;
                                    if(_loc2_)
                                    {
                                       addr00e0:
                                       return true;
                                       addr00df:
                                    }
                                 }
                                 return false;
                              }
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr00df);
                     }
                  }
                  §§goto(addr0066);
               }
               else
               {
                  §§push(this._fileRuntimeLoadServiceProxy.service.libAllReadyLoaded("gui_infield_dropIcons"));
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0056);
                  }
               }
               §§goto(addr00e0);
            }
            addr0035:
            return §§pop();
         }
         §§goto(addr002f);
      }
      
      private function handleIconsLoaded(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._loadTaskTriggered = false;
            if(!(_loc2_ && _loc2_))
            {
               this._fileRuntimeLoadServiceProxy.service.removeEventListener(this._preloadDoneNotification,this.handleIconsLoaded);
            }
         }
         while(this._dropIconQueue.length)
         {
            this.resumeDropAfterLoading(this._dropIconQueue.pop());
            if(!_loc3_)
            {
               break;
            }
         }
      }
      
      private function get component() : SpriteVisualElement
      {
         return super.viewComponent as SpriteVisualElement;
      }
      
      public function dropIcon(param1:DropIconVO, param2:String) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = param2;
         if(!(_loc4_ && Boolean(param2)))
         {
            §§push(ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP);
            if(_loc5_ || Boolean(this))
            {
               §§push(_loc3_);
               if(!(_loc4_ && Boolean(param2)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && Boolean(param2)))
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr00e5:
                        §§push(1);
                        if(_loc5_ || Boolean(_loc3_))
                        {
                        }
                     }
                     §§goto(addr0105);
                  }
                  else
                  {
                     §§goto(addr00e1);
                  }
               }
               addr00e1:
               §§goto(addr00e0);
            }
            addr00e0:
            if(ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP === _loc3_)
            {
               §§goto(addr00e5);
            }
            else
            {
               §§push(2);
            }
            addr0105:
            switch(§§pop())
            {
               case 0:
                  param1.state = DropIconVO.STATE_FLY;
                  if(_loc5_ || Boolean(param1))
                  {
                     this.drop2dIcon(param1);
                     if(_loc4_ && Boolean(_loc3_))
                     {
                     }
                  }
                  break;
               case 1:
                  param1.state = DropIconVO.STATE_BOUNCE;
                  if(_loc5_)
                  {
                     this.dropIsoIcon(param1);
                     if(_loc5_)
                     {
                     }
                  }
            }
            return;
         }
         §§goto(addr00e5);
      }
   }
}

