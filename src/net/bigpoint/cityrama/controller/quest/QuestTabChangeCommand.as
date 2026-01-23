package net.bigpoint.cityrama.controller.quest
{
   import net.bigpoint.cityrama.model.quest.QuestTabProxy;
   import net.bigpoint.cityrama.view.quest.ui.QuestDetailViewMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestTabbedPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class QuestTabChangeCommand extends SimpleCommand
   {
      
      public function QuestTabChangeCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:QuestTabProxy = facade.retrieveProxy(QuestTabProxy.NAME) as QuestTabProxy;
         var _loc3_:QuestDetailViewMediator = facade.retrieveMediator(QuestDetailViewMediator.NAME) as QuestDetailViewMediator;
         var _loc4_:QuestTabbedPopup = param1.getBody() as QuestTabbedPopup;
         if(_loc4_)
         {
            §§push(_loc2_.currentIndex);
            if(!_loc7_)
            {
               var _loc5_:* = §§pop();
               if(_loc6_)
               {
                  §§push(QuestTabProxy.QUEST_DETAIL_TAB_INDEX);
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     if(§§pop() === _loc5_)
                     {
                        addr00dc:
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        §§push(1);
                     }
                  }
                  §§goto(addr00f6);
               }
               §§goto(addr00dc);
            }
            addr00f6:
            switch(§§pop())
            {
               case 0:
                  if(!_loc3_)
                  {
                     if(!(_loc6_ || Boolean(param1)))
                     {
                        break;
                     }
                     _loc3_ = new QuestDetailViewMediator(QuestDetailViewMediator.NAME,_loc4_);
                     if(_loc6_)
                     {
                        facade.registerMediator(_loc3_);
                     }
                  }
                  _loc3_.init();
                  if(_loc6_)
                  {
                  }
            }
            §§goto(addr0101);
         }
         addr0101:
      }
   }
}

