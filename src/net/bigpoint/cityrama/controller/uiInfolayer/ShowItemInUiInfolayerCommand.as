package net.bigpoint.cityrama.controller.uiInfolayer
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerConfigElementCategory;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.vo.BestsellerVo;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowItemInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowItemInUiInfolayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc2_:Number = Number(param1.getBody().cid);
         var _loc3_:Point = Point(param1.getBody().pt);
         var _loc4_:uint = uint(param1.getBody().lineId);
         var _loc5_:String = param1.getBody().type;
         var _loc6_:BuildingDTO = param1.getBody().bDTO;
         var _loc7_:DecorationVo = param1.getBody().dVo;
         var _loc8_:* = _loc5_;
         if(_loc10_ || Boolean(param1))
         {
            §§push(ServerTagConstants.GOOD_NORMAL);
            if(_loc10_)
            {
               if(§§pop() + "Production" === _loc8_)
               {
                  if(_loc10_)
                  {
                     §§push(0);
                     if(_loc10_)
                     {
                     }
                  }
                  else
                  {
                     addr0475:
                     §§push(9);
                     if(_loc9_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(ServerConfigElementCategory.GOOD);
                  if(_loc10_)
                  {
                     addr0278:
                     §§push(_loc8_);
                     if(_loc10_ || Boolean(param1))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc10_ || Boolean(this))
                           {
                              §§push(1);
                              if(_loc9_ && Boolean(_loc3_))
                              {
                              }
                           }
                           else
                           {
                              §§goto(addr0475);
                           }
                        }
                        else
                        {
                           §§push(ServerTagConstants.GOOD_NORMAL);
                           if(_loc10_)
                           {
                              §§push(_loc8_);
                              if(_loc10_ || Boolean(_loc2_))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc10_ || Boolean(param1))
                                    {
                                       §§push(2);
                                       if(_loc10_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr06c1:
                                       §§push(19);
                                       if(_loc10_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(RewardItemComponentVo.TYPE_SPECIAL_GOOD);
                                    if(_loc10_)
                                    {
                                       §§push(_loc8_);
                                       if(!(_loc9_ && Boolean(_loc3_)))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(3);
                                                if(_loc9_ && Boolean(_loc2_))
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr0379:
                                                §§push(5);
                                                if(_loc10_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(RewardItemComponentVo.TYPE_NORMAL_GOOD);
                                             if(!(_loc9_ && Boolean(_loc2_)))
                                             {
                                                addr0335:
                                                §§push(_loc8_);
                                                if(!_loc9_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         §§push(4);
                                                         if(_loc9_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr067f:
                                                         §§push(18);
                                                         if(_loc9_ && Boolean(_loc3_))
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(RewardItemComponentVo.TYPE_EVENT_GOOD);
                                                      if(_loc10_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc9_ && Boolean(_loc3_)))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr0379);
                                                               }
                                                               else
                                                               {
                                                                  addr06fb:
                                                                  §§push(20);
                                                                  if(_loc10_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(UIInfolayerDispatcherEvent.CALLER_TYPE_GOOD);
                                                               if(_loc10_ || Boolean(param1))
                                                               {
                                                                  addr0399:
                                                                  §§push(_loc8_);
                                                                  if(!(_loc9_ && Boolean(_loc3_)))
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(6);
                                                                           if(_loc10_ || Boolean(this))
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0808:
                                                                           §§push(25);
                                                                           if(_loc9_)
                                                                           {
                                                                           }
                                                                        }
                                                                        §§goto(addr0820);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(RewardItemComponentVo.TYPE_RESOURCE);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(_loc10_ || Boolean(param1))
                                                                                 {
                                                                                    §§push(7);
                                                                                    if(_loc10_ || Boolean(param1))
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr04f1:
                                                                                    §§push(11);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(ServerConfigElementCategory.RESOURCE);
                                                                                 if(_loc10_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc10_ || Boolean(this))
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(8);
                                                                                             if(_loc10_ || Boolean(_loc2_))
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr06fb);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(RewardItemComponentVo.TYPE_NORMAL_PERMISSION);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr0463:
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      §§goto(addr0475);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr04af:
                                                                                                      §§push(10);
                                                                                                      if(_loc9_ && Boolean(this))
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(RewardItemComponentVo.TYPE_SPECIAL_PERMISSION);
                                                                                                   if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(!(_loc9_ && Boolean(param1)))
                                                                                                            {
                                                                                                               §§goto(addr04af);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr0808);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(ServerConfigElementCategory.PLAYFIELD_ITEM_PERMISSION);
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(!(_loc9_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && Boolean(param1)))
                                                                                                                     {
                                                                                                                        §§goto(addr04f1);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr06fb);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(UIInfolayerDispatcherEvent.CALLER_TYPE_PFI);
                                                                                                                     if(_loc10_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(_loc10_ || Boolean(param1))
                                                                                                                        {
                                                                                                                           addr0521:
                                                                                                                           if(§§pop() === §§pop())
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(12);
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr05a7:
                                                                                                                                 §§push(14);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(RewardItemComponentVo.TYPE_IMPROVEMENT);
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                 {
                                                                                                                                    addr0553:
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc10_ || Boolean(_loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(13);
                                                                                                                                          if(_loc10_ || Boolean(param1))
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr0808);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0820);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(ServerConfigElementCategory.PLAYFIELD_ITEM_IMPROVEMENT);
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(!(_loc9_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             §§goto(addr0595);
                                                                                                                                          }
                                                                                                                                          §§goto(addr066d);
                                                                                                                                       }
                                                                                                                                       §§goto(addr071b);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr0595:
                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && Boolean(param1)))
                                                                                                                                    {
                                                                                                                                       §§goto(addr05a7);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr0799:
                                                                                                                                       §§push(23);
                                                                                                                                       if(_loc9_ && Boolean(this))
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(BestsellerVo.GUI_INFOLAYER_STARTER);
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                §§push(15);
                                                                                                                                                if(_loc9_ && Boolean(param1))
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr0799);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(BestsellerVo.GUI_INFOLAYER_PROD_STARTER);
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                addr05f1:
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   addr05f9:
                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§push(16);
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr0808);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0820);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(BestsellerVo.GUI_INFOLAYER_EDU_STARTER);
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         if(_loc10_ || Boolean(param1))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() === §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(17);
                                                                                                                                                                  if(_loc10_ || Boolean(_loc2_))
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr067f);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(BestsellerVo.GUI_INFOLAYER_EMERG_STARTER);
                                                                                                                                                               if(_loc10_ || Boolean(_loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                                                  {
                                                                                                                                                                     addr066d:
                                                                                                                                                                     if(§§pop() === §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc10_ || Boolean(_loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr067f);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr075f:
                                                                                                                                                                           §§push(22);
                                                                                                                                                                           if(_loc10_ || Boolean(param1))
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(BestsellerVo.GUI_INFOLAYER_BUYRC);
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           addr069f:
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() === §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_ || Boolean(param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr06c1);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr072d:
                                                                                                                                                                                    §§push(21);
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(BestsellerVo.GUI_INFOLAYER_CFA);
                                                                                                                                                                                 if(_loc10_ || Boolean(_loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr06e1:
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_ || Boolean(_loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr06fb);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr075f);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(BestsellerVo.GUI_INFOLAYER_SOON);
                                                                                                                                                                                          if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr071b:
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0723:
                                                                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr072d);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr075f);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT_BOOSTER);
                                                                                                                                                                                                   if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr074d:
                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0755:
                                                                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr075f);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr0799);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(UIInfolayerDispatcherEvent.CALLER_TYPE_BOOSTER);
                                                                                                                                                                                                            if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0787:
                                                                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr078f:
                                                                                                                                                                                                                  if(§§pop() === §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr0799);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr0808);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(RewardItemComponentVo.TYPE_ASSIST);
                                                                                                                                                                                                                     if(_loc10_ || Boolean(_loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr07c1:
                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr07c9:
                                                                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(24);
                                                                                                                                                                                                                                 if(_loc9_ && Boolean(_loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr0808);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0820);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr0804);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr0804:
                                                                                                                                                                                                                        §§goto(addr0802);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr0802:
                                                                                                                                                                                                                     if(ServerOutputConstants.ASSIST === _loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr0808);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(26);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0820);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0808);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr07c9);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr07c1);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0820);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0804);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0787);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0820);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0755);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0787);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0820);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0804);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr07c1);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0820);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr07c9);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr06e1);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0820);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0723);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr07c1);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0820);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr066d);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr06e1);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr066d);
                                                                                                                                             }
                                                                                                                                             §§goto(addr07c1);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0820);
                                                                                                                                       }
                                                                                                                                       §§goto(addr05f9);
                                                                                                                                    }
                                                                                                                                    §§goto(addr069f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0820);
                                                                                                                              }
                                                                                                                              §§goto(addr05f1);
                                                                                                                           }
                                                                                                                           §§goto(addr0820);
                                                                                                                        }
                                                                                                                        §§goto(addr066d);
                                                                                                                     }
                                                                                                                     §§goto(addr07c1);
                                                                                                                  }
                                                                                                                  §§goto(addr0820);
                                                                                                               }
                                                                                                               §§goto(addr0804);
                                                                                                            }
                                                                                                            §§goto(addr07c1);
                                                                                                         }
                                                                                                         §§goto(addr0808);
                                                                                                      }
                                                                                                      §§goto(addr0553);
                                                                                                   }
                                                                                                   §§goto(addr0787);
                                                                                                }
                                                                                                §§goto(addr0820);
                                                                                             }
                                                                                             §§goto(addr0755);
                                                                                          }
                                                                                          §§goto(addr069f);
                                                                                       }
                                                                                       §§goto(addr0820);
                                                                                    }
                                                                                    §§goto(addr0521);
                                                                                 }
                                                                                 §§goto(addr069f);
                                                                              }
                                                                              §§goto(addr0820);
                                                                           }
                                                                           §§goto(addr0755);
                                                                        }
                                                                        §§goto(addr06e1);
                                                                     }
                                                                  }
                                                                  §§goto(addr0755);
                                                               }
                                                               §§goto(addr0802);
                                                            }
                                                            §§goto(addr0820);
                                                         }
                                                         §§goto(addr0804);
                                                      }
                                                      §§goto(addr0787);
                                                   }
                                                   §§goto(addr0820);
                                                }
                                                §§goto(addr078f);
                                             }
                                             §§goto(addr0787);
                                          }
                                          §§goto(addr0820);
                                       }
                                       §§goto(addr07c9);
                                    }
                                    §§goto(addr0335);
                                 }
                                 §§goto(addr0820);
                              }
                              §§goto(addr07c9);
                           }
                           §§goto(addr0399);
                        }
                        §§goto(addr0820);
                     }
                     §§goto(addr0463);
                  }
                  §§goto(addr074d);
               }
               addr0820:
               switch(§§pop())
               {
                  case 0:
                     sendNotification(ApplicationNotificationConstants.SHOW_GOOD_IN_UI_INFOLAYER,{
                        "showLocked":true,
                        "cid":_loc2_,
                        "lineId":_loc4_,
                        "pt":_loc3_
                     },param1.getType());
                     if(_loc9_ && Boolean(this))
                     {
                     }
                     break;
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                  case 5:
                  case 6:
                     sendNotification(ApplicationNotificationConstants.SHOW_GOOD_IN_UI_INFOLAYER,{
                        "cid":_loc2_,
                        "lineId":_loc4_,
                        "pt":_loc3_
                     },param1.getType());
                     if(_loc10_ || Boolean(_loc3_))
                     {
                     }
                     break;
                  case 7:
                  case 8:
                     sendNotification(ApplicationNotificationConstants.SHOW_RESSOURCE_IN_UI_INFOLAYER,{
                        "cid":_loc2_,
                        "lineId":_loc4_,
                        "pt":_loc3_
                     },param1.getType());
                     if(_loc9_ && Boolean(param1))
                     {
                     }
                     break;
                  case 9:
                  case 10:
                  case 11:
                     sendNotification(ApplicationNotificationConstants.SHOW_PLAYFIELDITEM_IN_UI_INFOLAYER,{
                        "cid":_loc2_,
                        "lineId":_loc4_,
                        "pt":_loc3_,
                        "isReward":true,
                        "bDTO":_loc6_,
                        "dVo":_loc7_
                     },param1.getType());
                     if(_loc9_)
                     {
                     }
                     break;
                  case 12:
                     sendNotification(ApplicationNotificationConstants.SHOW_PLAYFIELDITEM_IN_UI_INFOLAYER,{
                        "cid":_loc2_,
                        "lineId":_loc4_,
                        "pt":_loc3_,
                        "isReward":false
                     },param1.getType());
                     if(_loc9_ && Boolean(_loc3_))
                     {
                     }
                     break;
                  case 13:
                  case 14:
                     sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
                        "cid":_loc2_,
                        "lineId":_loc4_,
                        "pt":_loc3_
                     },param1.getType());
                     if(_loc10_)
                     {
                     }
                     break;
                  case 15:
                  case 16:
                  case 17:
                  case 18:
                  case 19:
                  case 20:
                  case 21:
                     sendNotification(ApplicationNotificationConstants.SHOW_TREASAURY_ITEM_IN_UI_INFOLAYER,{
                        "type":_loc5_,
                        "lineId":_loc4_,
                        "pt":_loc3_
                     },param1.getType());
                     if(_loc9_)
                     {
                     }
                     break;
                  case 22:
                  case 23:
                     sendNotification(ApplicationNotificationConstants.SHOW_BOOSTER_PACK_IN_UI_INFOLAYER,{
                        "type":_loc5_,
                        "cid":_loc2_,
                        "lineId":_loc4_,
                        "pt":_loc3_
                     },param1.getType());
                     if(_loc10_)
                     {
                     }
                     break;
                  case 24:
                  case 25:
                     sendNotification(ApplicationNotificationConstants.SHOW_ASSISTANT_IN_UI_INFOLAYER,{
                        "cid":_loc2_,
                        "lineId":_loc4_,
                        "pt":_loc3_
                     },param1.getType());
                     if(_loc9_ && Boolean(_loc2_))
                     {
                     }
               }
               return;
            }
            §§goto(addr0278);
         }
         §§goto(addr04af);
      }
   }
}

