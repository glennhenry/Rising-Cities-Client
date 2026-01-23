package net.bigpoint.cityrama.controller.server.messages.quest
{
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.QuestCompleteCostVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageQuestTaskUpdateCommand extends SimpleCommand
   {
      
      public function ServerMessageQuestTaskUpdateCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:QuestProxy = QuestProxy(facade.retrieveProxy(QuestProxy.NAME));
         var _loc4_:QuestCompleteCostVo = null;
         if(_loc5_ || Boolean(this))
         {
            §§push(_loc2_.json.q == null);
            if(_loc5_)
            {
               §§push(!§§pop());
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr0081);
                     }
                     §§goto(addr00a3);
                  }
               }
               §§goto(addr00a4);
            }
            addr0081:
            §§pop();
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               addr00a4:
               addr0090:
               §§push(_loc2_.json.q.u == null);
               if(_loc5_)
               {
                  addr00a3:
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     _loc4_ = new QuestCompleteCostVo(_loc2_.json.q.u);
                     addr00d3:
                     _loc3_.updateTask(_loc2_.json.q.t,_loc2_.json.q.cid,_loc2_.json.q.s,_loc2_.json.q.v,_loc2_.json.q.qid,_loc4_);
                  }
                  §§goto(addr0111);
               }
               §§goto(addr00d3);
            }
            addr0111:
            return;
         }
         §§goto(addr0090);
      }
   }
}

