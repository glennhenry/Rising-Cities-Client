package net.bigpoint.cityrama.controller.residentialBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.residentialBook.ResidentialTabProxy;
   import net.bigpoint.cityrama.view.residentialBook.ResidentialImprovementContentMediator;
   import net.bigpoint.cityrama.view.residentialBook.ResidentialOverviewContentMediator;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ResidentialTabChangeCommand extends SimpleCommand
   {
      
      public function ResidentialTabChangeCommand()
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
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:ResidentialTabProxy = facade.retrieveProxy(ResidentialTabProxy.NAME) as ResidentialTabProxy;
         var _loc3_:ResidentialOverviewContentMediator = facade.retrieveMediator(ResidentialOverviewContentMediator.NAME) as ResidentialOverviewContentMediator;
         var _loc4_:ResidentialImprovementContentMediator = facade.retrieveMediator(ResidentialImprovementContentMediator.NAME) as ResidentialImprovementContentMediator;
         var _loc5_:ResidentialPopup = param1.getBody() as ResidentialPopup;
         if(_loc5_)
         {
            §§push(_loc2_.currentIndex);
            if(_loc7_)
            {
               var _loc6_:* = §§pop();
               if(_loc7_ || Boolean(this))
               {
                  §§push(ResidentialTabProxy.OVERVIEW_TAB_INDEX);
                  if(!_loc8_)
                  {
                     §§push(_loc6_);
                     if(!_loc8_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              addr01a1:
                              §§push(0);
                              if(_loc8_ && Boolean(_loc3_))
                              {
                              }
                           }
                           else
                           {
                              addr01dc:
                              §§push(1);
                              if(_loc8_ && Boolean(param1))
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(ResidentialTabProxy.HIP_TAB_INDEX);
                           if(!(_loc8_ && Boolean(this)))
                           {
                              addr01d8:
                              if(§§pop() === _loc6_)
                              {
                                 §§goto(addr01dc);
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                        }
                        addr01fe:
                        switch(§§pop())
                        {
                           case 0:
                              sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
                              if(!_loc8_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       _loc3_ = new ResidentialOverviewContentMediator(ResidentialOverviewContentMediator.NAME,_loc5_);
                                       if(_loc7_)
                                       {
                                          facade.registerMediator(_loc3_);
                                       }
                                       addr00a8:
                                       if(_loc4_)
                                       {
                                          if(_loc7_ || Boolean(this))
                                          {
                                             facade.removeMediator(ResidentialImprovementContentMediator.NAME);
                                             if(!_loc8_)
                                             {
                                                addr00cd:
                                                _loc3_.init();
                                                if(!(_loc8_ && Boolean(param1)))
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                addr012f:
                                                facade.removeMediator(ResidentialOverviewContentMediator.NAME);
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                             }
                                             addr0140:
                                             _loc4_.init(_loc2_.currentResidential);
                                             if(_loc7_ || Boolean(param1))
                                             {
                                             }
                                             break;
                                          }
                                          §§goto(addr012f);
                                       }
                                       §§goto(addr00cd);
                                    }
                                    §§goto(addr012f);
                                 }
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00cd);
                           case 1:
                              if(!_loc4_)
                              {
                                 if(_loc7_ || Boolean(this))
                                 {
                                    _loc4_ = new ResidentialImprovementContentMediator(ResidentialImprovementContentMediator.NAME,_loc5_);
                                    if(_loc7_)
                                    {
                                       facade.registerMediator(_loc4_);
                                    }
                                    addr0124:
                                    if(_loc3_)
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§goto(addr012f);
                                    }
                                 }
                                 §§goto(addr0140);
                              }
                              §§goto(addr0124);
                        }
                        addr020c:
                        return;
                        addr01fc:
                     }
                     §§goto(addr01d8);
                  }
                  §§goto(addr01fc);
               }
               §§goto(addr01a1);
            }
            §§goto(addr01fe);
         }
         §§goto(addr020c);
      }
   }
}

