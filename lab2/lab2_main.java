public class MainActivity extends AppCompatActivity {
   @Override
   protected void onCreate(Bundle savedInstanceState) {
       super.onCreate(savedInstanceState);
       setContentView(R.layout.activity_main);
       EditText edittext = findViewById(R.id.sendmessage);
       Button sub = findViewById(R.id.button);
       sub.setOnClickListener(new View.OnClickListener() {
           @Override
           public void onClick(View v) {
               String message = edittext.getText().toString();
               Intent intent = new Intent(MainActivity.this, Screen2.class);
               intent.putExtra("message", message);
               startActivity(intent);
           }
       });
   }
}
