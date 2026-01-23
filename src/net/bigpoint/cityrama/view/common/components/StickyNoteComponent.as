package net.bigpoint.cityrama.view.common.components
{
   import spark.components.BorderContainer;
   import spark.components.Group;
   
   public class StickyNoteComponent extends BorderContainer
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "topTape":true,
            "bottomTape":true,
            "leftTape":true,
            "rightTape":true,
            "contentGroup":false
         };
      }
      
      private var _tapeTop:Boolean = false;
      
      private var _tapeBottom:Boolean = false;
      
      private var _tapeLeft:Boolean = false;
      
      private var _tapeRight:Boolean = false;
      
      private var _tapeTopChanged:Boolean = false;
      
      private var _tapeBottomChanged:Boolean = false;
      
      private var _tapeLeftChanged:Boolean = false;
      
      private var _tapeRightChanged:Boolean = false;
      
      public var topTape:Group;
      
      public var bottomTape:Group;
      
      public var leftTape:Group;
      
      public var rightTape:Group;
      
      public function StickyNoteComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               addr0026:
               setStyle("skinClass",this.getStyle("skinClass"));
            }
            return;
         }
         §§goto(addr0026);
      }
      
      override public function get styleName() : Object
      {
         return super.styleName;
      }
      
      override public function set styleName(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1 != super.styleName)
            {
               if(!_loc3_)
               {
                  super.styleName = param1;
                  if(_loc2_)
                  {
                     addr002d:
                     invalidateDisplayList();
                  }
                  §§goto(addr0034);
               }
               §§goto(addr002d);
            }
            addr0034:
            return;
         }
         §§goto(addr002d);
      }
      
      public function get tapeRight() : Boolean
      {
         return this._tapeRight;
      }
      
      public function set tapeRight(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 != this._tapeRight)
            {
               if(_loc3_ || _loc3_)
               {
                  addr003c:
                  this._tapeRightChanged = true;
                  if(_loc3_)
                  {
                     this._tapeRight = param1;
                     if(!_loc2_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003c);
      }
      
      public function get tapeLeft() : Boolean
      {
         return this._tapeLeft;
      }
      
      public function set tapeLeft(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 != this._tapeLeft)
            {
               if(_loc3_ || _loc3_)
               {
                  this._tapeLeftChanged = true;
                  if(_loc3_)
                  {
                     §§goto(addr0042);
                  }
                  §§goto(addr004c);
               }
               addr0042:
               this._tapeLeft = param1;
               if(_loc3_)
               {
                  addr004c:
                  invalidateProperties();
               }
               §§goto(addr0051);
            }
            addr0051:
            return;
         }
         §§goto(addr004c);
      }
      
      public function get tapeBottom() : Boolean
      {
         return this._tapeBottom;
      }
      
      public function set tapeBottom(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 != this._tapeBottom)
            {
               if(_loc2_)
               {
                  this._tapeBottomChanged = true;
                  if(_loc2_)
                  {
                     addr003a:
                     this._tapeBottom = param1;
                     if(!_loc3_)
                     {
                        addr0044:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0049);
               }
               §§goto(addr0044);
            }
            addr0049:
            return;
         }
         §§goto(addr003a);
      }
      
      public function get tapeTop() : Boolean
      {
         return this._tapeTop;
      }
      
      public function set tapeTop(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1 != this._tapeTop)
            {
               if(!_loc3_)
               {
                  this._tapeTopChanged = true;
                  if(!_loc3_)
                  {
                     §§goto(addr003d);
                  }
                  §§goto(addr0047);
               }
               addr003d:
               this._tapeTop = param1;
               if(_loc2_)
               {
                  addr0047:
                  invalidateProperties();
               }
               §§goto(addr004c);
            }
            addr004c:
            return;
         }
         §§goto(addr0047);
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super.setCurrentState(param1,param2);
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._tapeTopChanged);
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr0041:
                        this._tapeTopChanged = false;
                        if(_loc1_)
                        {
                           this.topTape.visible = this._tapeTop;
                           if(_loc1_)
                           {
                              invalidateDisplayList();
                              if(_loc1_)
                              {
                                 addr0066:
                                 §§push(this._tapeBottomChanged);
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc1_)
                                       {
                                          addr0080:
                                          this._tapeBottomChanged = false;
                                          if(_loc1_ || Boolean(this))
                                          {
                                             this.bottomTape.visible = this._tapeBottom;
                                             if(_loc1_)
                                             {
                                                invalidateDisplayList();
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr00b7);
                                                }
                                                §§goto(addr0115);
                                             }
                                          }
                                          §§goto(addr0136);
                                       }
                                       §§goto(addr00db);
                                    }
                                    §§goto(addr00b7);
                                 }
                                 §§goto(addr00c8);
                              }
                              §§goto(addr0080);
                           }
                           addr00b7:
                           §§push(this._tapeLeftChanged);
                           if(_loc1_ || _loc2_)
                           {
                              addr00c8:
                              if(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    this._tapeLeftChanged = false;
                                    if(!_loc2_)
                                    {
                                       addr00db:
                                       this.leftTape.visible = this._tapeLeft;
                                       if(!_loc2_)
                                       {
                                          invalidateDisplayList();
                                          if(_loc1_ || Boolean(this))
                                          {
                                             §§goto(addr00fe);
                                          }
                                          §§goto(addr0127);
                                       }
                                       §§goto(addr0136);
                                    }
                                    §§goto(addr0115);
                                 }
                              }
                              addr00fe:
                              §§goto(addr010c);
                           }
                           addr010c:
                           if(this._tapeRightChanged)
                           {
                              if(!_loc2_)
                              {
                                 addr0115:
                                 this._tapeRightChanged = false;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr0127:
                                    this.rightTape.visible = this._tapeRight;
                                    if(_loc1_)
                                    {
                                       addr0136:
                                       invalidateDisplayList();
                                    }
                                    §§goto(addr013d);
                                 }
                                 §§goto(addr0136);
                              }
                           }
                           addr013d:
                           return;
                        }
                        §§goto(addr00fe);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0066);
               }
               §§goto(addr00c8);
            }
            §§goto(addr0041);
         }
         §§goto(addr0080);
      }
   }
}

