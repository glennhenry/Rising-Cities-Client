package net.bigpoint.cityrama.controller.featuredEvent
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.featuredEvent.FeaturedEventLayerMediator;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenFeaturedEventLayerCommand extends SimpleCommand
   {
      
      public function OpenFeaturedEventLayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:int = 0;
         if(_loc4_ || _loc3_)
         {
            if(param1.getBody() != null)
            {
               if(!(_loc5_ && _loc3_))
               {
                  if(param1.getBody() is int)
                  {
                     if(_loc4_)
                     {
                        addr004e:
                        _loc2_ = param1.getBody() as int;
                     }
                  }
                  var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
                  addr0057:
                  if(!(_loc5_ && Boolean(this)))
                  {
                     _loc3_.modal = true;
                     if(!_loc5_)
                     {
                        _loc3_.viewClass = FeaturedEventLayer;
                        if(_loc4_ || Boolean(this))
                        {
                           _loc3_.mediatorClass = FeaturedEventLayerMediator;
                           if(!(_loc5_ && Boolean(this)))
                           {
                              _loc3_.mediatorName = FeaturedEventLayerMediator.NAME;
                              if(!_loc5_)
                              {
                                 _loc3_.data = _loc2_;
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    addr00e1:
                                    facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                                 }
                                 §§goto(addr00ec);
                              }
                              §§goto(addr00e1);
                           }
                           addr00ec:
                           return;
                        }
                     }
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr004e);
            }
         }
         §§goto(addr0057);
      }
   }
}

