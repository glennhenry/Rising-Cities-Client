package net.bigpoint.cityrama.view.userInterfaceInfoLayer
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.AssistantUiInfolayerContent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.GoodUiInfolayerContent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.ImprovementUiInfolayerContent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.MasteryCallengeUiInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.PlayfieldItemUiInfolayerContent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.SimpleTextUiInfolayerContent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AssistantUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.GoodUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.ImprovementUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.MasteryChallengeUiInfolayerComponentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.PlayfieldItemUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.facade.Facade;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   
   public class UserInterfaceInfoLayerMediator extends Mediator
   {
      
      public static const NAME:String = "UserInterfaceInfoLayerMediator";
      
      public static const LINE_AUTO_SELECT:uint = 4294967295;
      
      public static const DELAY_NONE:Number = 0;
      
      public static const DELAY_SMOOTH:Number = 0.5;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "UserInterfaceInfoLayerMediator";
         if(!(_loc2_ && _loc2_))
         {
            LINE_AUTO_SELECT = uint.MAX_VALUE;
            if(_loc1_)
            {
               addr0043:
               DELAY_NONE = 0;
               if(_loc1_)
               {
                  DELAY_SMOOTH = 0.5;
               }
            }
         }
         return;
      }
      §§goto(addr0043);
      
      private var _parentMediator:Mediator;
      
      private var _uiLineList:Vector.<UiInfolayerAlignmentLine>;
      
      private var _autoDestroy:Boolean;
      
      private var _delay:Number;
      
      public function UserInterfaceInfoLayerMediator(param1:Vector.<UiInfolayerAlignmentLine>, param2:Mediator, param3:Number = 0, param4:Boolean = true)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_ || Boolean(param1))
         {
            this._parentMediator = param2;
            if(!(_loc6_ && Boolean(this)))
            {
               this._uiLineList = param1;
               if(_loc7_)
               {
                  addr004f:
                  this._autoDestroy = param4;
                  if(!_loc6_)
                  {
                     this._delay = param3;
                  }
               }
            }
            var _loc5_:ApplicationMediator = Facade.getInstance().retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
            if(!(_loc6_ && Boolean(param2)))
            {
               super(NAME + param2.getMediatorName(),_loc5_.component.mainView.uiInfolayerView);
            }
            return;
         }
         §§goto(addr004f);
      }
      
      private static function getBuiltViewByVO(param1:AbstractUIInfolayerContentVo) : AbstractUIInfolayerComponent
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:AbstractUIInfolayerComponent = null;
         if(_loc3_)
         {
            §§push(param1 is SimpleTextUiInfolayerContentVo);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     _loc2_ = new SimpleTextUiInfolayerContent();
                     addr003a:
                     §§push(param1 is ImprovementUiInfolayerContentVo);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              _loc2_ = new ImprovementUiInfolayerContent();
                              addr0058:
                              §§push(param1 is PlayfieldItemUiInfolayerContentVo);
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       addr0076:
                                       _loc2_ = new PlayfieldItemUiInfolayerContent();
                                       addr0081:
                                       §§push(param1 is GoodUiInfolayerContentVo);
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr009d:
                                                _loc2_ = new GoodUiInfolayerContent();
                                                addr00a8:
                                                §§push(param1 is MasteryChallengeUiInfolayerComponentVo);
                                                if(_loc3_ || Boolean(param1))
                                                {
                                                   addr00ba:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc4_ && Boolean(_loc2_)))
                                                      {
                                                         addr00d8:
                                                         _loc2_ = new MasteryCallengeUiInfolayerComponent();
                                                         addr00e3:
                                                         addr00e8:
                                                         if(param1 is AssistantUiInfolayerContentVo)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               addr00f1:
                                                               _loc2_ = new AssistantUiInfolayerContent();
                                                               addr00fc:
                                                               _loc2_.data = param1;
                                                            }
                                                            §§goto(addr0100);
                                                         }
                                                         §§goto(addr00fc);
                                                      }
                                                      §§goto(addr0100);
                                                   }
                                                   §§goto(addr00e3);
                                                }
                                                §§goto(addr00e8);
                                             }
                                             addr0100:
                                             return _loc2_;
                                          }
                                          §§goto(addr00a8);
                                       }
                                       §§goto(addr00e8);
                                    }
                                    §§goto(addr00d8);
                                 }
                                 §§goto(addr0081);
                              }
                              §§goto(addr00e8);
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr0058);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr00f1);
               }
               §§goto(addr003a);
            }
            §§goto(addr00e8);
         }
         §§goto(addr0076);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._autoDestroy)
            {
               if(_loc2_)
               {
                  this._parentMediator.getViewComponent().addEventListener(Event.REMOVED_FROM_STAGE,this.parentMediatorViewComponentRemoved);
               }
            }
         }
      }
      
      private function parentMediatorViewComponentRemoved(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            facade.removeMediator(getMediatorName());
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this._parentMediator.getViewComponent().removeEventListener(Event.REMOVED_FROM_STAGE,this.parentMediatorViewComponentRemoved);
            if(_loc1_)
            {
               TweenMax.killDelayedCallsTo(this.showInfoLayer);
               if(!_loc2_)
               {
                  addr0051:
                  this.component.removeAllElements();
               }
               return;
            }
         }
         §§goto(addr0051);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.SHOW_UI_INFOLAYER,ApplicationNotificationConstants.HIDE_UI_INFOLAYER];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:AbstractUIInfolayerContentVo = null;
         if(!_loc5_)
         {
            TweenMax.killDelayedCallsTo(this.showInfoLayer);
         }
         §§push(param1.getName());
         loop0:
         while(true)
         {
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               §§push(ApplicationNotificationConstants.SHOW_UI_INFOLAYER);
               if(_loc4_ || Boolean(param1))
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && Boolean(this)))
                        {
                           addr011b:
                           §§push(0);
                           if(_loc5_ && Boolean(param1))
                           {
                           }
                        }
                        else
                        {
                           addr0147:
                           §§push(1);
                           if(_loc5_ && Boolean(this))
                           {
                           }
                        }
                        addr0167:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(param1.getType());
                              if(!_loc5_)
                              {
                                 §§push(§§pop() == null);
                                 if(_loc4_)
                                 {
                                    var _temp_5:* = §§pop();
                                    §§push(_temp_5);
                                    if(!_temp_5)
                                    {
                                       if(!(_loc5_ && Boolean(_loc2_)))
                                       {
                                          addr0056:
                                          §§pop();
                                          if(!_loc5_)
                                          {
                                             addr0075:
                                             §§push(this.getMediatorName().indexOf(param1.getType()) == -1);
                                             if(_loc4_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(!§§pop())
                                             {
                                                break loop0;
                                             }
                                             if(_loc5_ && Boolean(_loc2_))
                                             {
                                                break loop0;
                                             }
                                          }
                                          _loc2_ = param1.getBody() as AbstractUIInfolayerContentVo;
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             TweenMax.delayedCall(this._delay,this.showInfoLayer,[_loc2_]);
                                          }
                                          break loop0;
                                       }
                                    }
                                    §§goto(addr0075);
                                 }
                                 §§goto(addr0056);
                              }
                              break;
                           case 1:
                              this.component.removeAllElements();
                              if(_loc4_ || _loc3_)
                              {
                              }
                              break loop0;
                           default:
                              break loop0;
                        }
                     }
                     else
                     {
                        addr0143:
                        addr0142:
                        if(ApplicationNotificationConstants.HIDE_UI_INFOLAYER === _loc3_)
                        {
                           §§goto(addr0147);
                        }
                        else
                        {
                           §§push(2);
                        }
                        §§goto(addr0167);
                     }
                     §§goto(addr0147);
                  }
                  §§goto(addr0143);
               }
               §§goto(addr0142);
            }
            §§goto(addr011b);
         }
      }
      
      private function showInfoLayer(param1:AbstractUIInfolayerContentVo) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            if(param1 == null)
            {
               if(_loc4_)
               {
                  return;
               }
            }
            else
            {
               this.validateLines();
            }
         }
         var _loc2_:AbstractUIInfolayerComponent = getBuiltViewByVO(param1);
         if(!_loc3_)
         {
            this.calculateAndUpdatePos(_loc2_,param1);
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0075:
               this.component.addElement(_loc2_);
            }
            return;
         }
         §§goto(addr0075);
      }
      
      private function validateLines() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = null;
         for each(_loc1_ in this._uiLineList)
         {
            if(_loc5_ || Boolean(_loc1_))
            {
               _loc1_.validatePosition();
            }
         }
      }
      
      private function calculateAndUpdatePos(param1:AbstractUIInfolayerComponent, param2:AbstractUIInfolayerContentVo) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:UserInterfaceInfoLayerAlignLineVo = this.selectLine(param2).lineVo;
         if(!_loc4_)
         {
            if(_loc3_ == null)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§goto(addr003e);
               }
            }
            else if(_loc3_.layout == UserInterfaceInfoLayerAlignLineVo.LAYOUT_HORIZONTAL)
            {
               if(!(_loc4_ && Boolean(param2)))
               {
                  if(param2.pos.x > _loc3_.to.x)
                  {
                     if(!_loc4_)
                     {
                        param2.pos.x = _loc3_.to.x;
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr00a6:
                           if(param2.pos.x < _loc3_.from.x)
                           {
                              if(_loc5_)
                              {
                                 addr00bc:
                                 param2.pos.x = _loc3_.from.x;
                                 if(_loc5_ || Boolean(param2))
                                 {
                                    addr00e3:
                                    param1.left = param2.pos.x;
                                    if(!_loc4_)
                                    {
                                       §§goto(addr00f2);
                                    }
                                 }
                                 §§goto(addr0101);
                              }
                              addr00f2:
                              param1.top = _loc3_.from.y;
                              if(_loc5_)
                              {
                                 addr0101:
                                 param2.alignment = _loc3_.alignment;
                              }
                              §§goto(addr0109);
                           }
                           §§goto(addr00e3);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr0109);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr00e3);
            }
            addr0109:
            return;
         }
         addr003e:
      }
      
      private function selectLine(param1:AbstractUIInfolayerContentVo) : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:UiInfolayerAlignmentLine = null;
         var _loc3_:UiInfolayerAlignmentLine = null;
         for each(_loc3_ in this._uiLineList)
         {
            if(!(_loc7_ && Boolean(this)))
            {
               §§push(param1.lineId);
               if(_loc6_)
               {
                  if(§§pop() == _loc3_.lineVo.lineId)
                  {
                     if(!_loc7_)
                     {
                        return _loc3_;
                     }
                     addr0096:
                     _loc2_ = _loc3_;
                     addr009b:
                     if(Point.distance(new Point(0,_loc3_.lineVo.from.y),new Point(0,param1.pos.y)) >= Point.distance(new Point(0,_loc2_.lineVo.from.y),new Point(0,param1.pos.y)))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr0070:
                     addr006c:
                     if(param1.lineId != LINE_AUTO_SELECT)
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(_loc2_ == null)
                        {
                           if(_loc6_)
                           {
                              §§goto(addr0096);
                           }
                           addr00f1:
                           _loc2_ = _loc3_;
                           continue;
                        }
                        §§goto(addr009b);
                     }
                  }
                  §§goto(addr00f1);
               }
               §§goto(addr0070);
            }
            §§goto(addr006c);
         }
         if(_loc6_ || Boolean(this))
         {
            if(_loc2_ != null)
            {
               if(!_loc7_)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      private function get component() : Group
      {
         return super.getViewComponent() as Group;
      }
   }
}

